import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/use_case/use_case.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/repository/order_detail_repo.dart';

@singleton
class RequestToExecuteUseCase extends UseCase<void, int> {
  final OrderDetailRepo repo;

  RequestToExecuteUseCase({required this.repo});

  @override
  Future<void> call(params) async {
    await repo.requestToExecute(id: params);
  }
}
