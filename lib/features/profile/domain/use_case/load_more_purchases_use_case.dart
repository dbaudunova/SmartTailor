import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/my_purchases.dart';
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart';

@singleton
class LoadMorePurchasesUseCase {
  final ProfileRepo repo;

  LoadMorePurchasesUseCase({required this.repo});

  Future<PurchasesListEntity> call({required int pageNumber}) async {
    return await repo.getMyPurchases(pageNumber: pageNumber);
  }
}
