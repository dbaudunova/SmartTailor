import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/organization/data/models/create_organization_model/create_organixation_model.dart';
import 'package:neobis_smart_tailor/features/organization/presentation/pages/create_organization/data/models/create_organization_model/create_organixation_model.dart';
import 'package:neobis_smart_tailor/features/organization/presentation/pages/create_organization/domain/use_case/create_organization_use_case.dart';

part 'create_organization_event.dart';
part 'create_organization_state.dart';
part 'create_organization_bloc.freezed.dart';

@singleton
class CreateOrganizationBloc
    extends Bloc<CreateOrganizationEvent, CreateOrganizationState> {
  final CreateOrganizationUseCase createOrganizationUseCase;

  CreateOrganizationBloc(
    this.createOrganizationUseCase,
  ) : super(
          const CreateOrganizationState(
            image: null,
            stateStatus: StateStatus.initial(),
          ),
        ) {
    on<_CreateOrganization>(_createOrganization);
    on<_AddImage>(_addImage);
    on<_ResetState>(_resetState);
  }

  void _resetState(
    _ResetState event,
    Emitter<CreateOrganizationState> emit,
  ) {
    emit(state.copyWith(image: null, stateStatus: const StateStatus.initial()));
  }

  void _addImage(
    _AddImage event,
    Emitter<CreateOrganizationState> emit,
  ) {
    // emit(state.copyWith(stateStatus: const StateStatus.loading()));
    emit(state.copyWith(image: event.image));
  }

  Future<void> _createOrganization(
    _CreateOrganization event,
    Emitter<CreateOrganizationState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      await createOrganizationUseCase.call(
          model: event.createModel, image: state.image!);

      emit(state.copyWith(
          stateStatus: const StateStatus.success('Успешно создано')));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(
          stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }
}
