import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/profile/data/model/my_purchases/my_purchases_list_model.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/my_purchases.dart';
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_all_purchases_use_case.dart';

part 'purchases_event.dart';

part 'purchases_state.dart';

part 'purchases_bloc.freezed.dart';

@injectable
class PurchasesBloc extends Bloc<PurchasesEvent, PurchasesState> {
  final GetAllPurchasesUseCase getAllPurchasesUseCase;
  PurchasesBloc(this.getAllPurchasesUseCase)
      : super(
          const PurchasesState(
            stateStatus: StateStatus.initial(),
            purchases: [],
            isLast: false,
            totalCount: 0,
          ),
        ) {
    on<_GetPurchasesList>(_getPurchasesList);
  }

  Future<void> _getPurchasesList(
    _GetPurchasesList event,
    Emitter<PurchasesState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      var entity = await getAllPurchasesUseCase.call(event.pageNumber);

      emit(state.copyWith(
          stateStatus: const StateStatus.success(),
          purchases: entity.advertisement,
          isLast: entity.isLast!,
          totalCount: entity.totalCount!));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }
}
