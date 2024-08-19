import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/repository/service_detail_repo.dart';

@singleton
class SendRequestToServiceUseCase {
  final ServiceDetailRepo repo;

  SendRequestToServiceUseCase({required this.repo});

  Future<void> call({required int id}) async {
    await repo.getDetailService(id: id);
  }
}
