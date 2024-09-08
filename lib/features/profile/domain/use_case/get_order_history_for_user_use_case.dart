import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/my_history_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart';

@singleton
class GetOrderHistoryForUserUseCase {
  final ProfileRepo repo;

  GetOrderHistoryForUserUseCase({required this.repo});

  Future<MyHistoryEntity> call({required String stage, required int page}) async {
    var entity = await repo.getHistory(page: page, stage: stage);
    return entity;
  }
}
