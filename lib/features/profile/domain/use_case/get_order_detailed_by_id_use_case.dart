import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/use_case/use_case.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/order_detailed_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart';

@singleton
class GetOrderDetailedByIdUseCase extends UseCase<OrderDetailedEntity, int> {
  final ProfileRepo repo;

  GetOrderDetailedByIdUseCase({required this.repo});

  @override
  Future<OrderDetailedEntity> call(int params) async {
    return await repo.getOrderDetailedById(id: params);
  }
}
