import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/use_case/use_case.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/entitys/order_detail_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/repository/order_detail_repo.dart';

@singleton
class GetOrderByIdUseCase extends UseCase<OrderDetailEntity, int> {
  final OrderDetailRepo repo;

  GetOrderByIdUseCase({required this.repo});

  @override
  Future<OrderDetailEntity> call(params) async {
    var entity = await repo.getDetailOrder(id: params);
    return entity;
  }
}
