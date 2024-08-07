import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/use_case/use_case.dart';
import 'package:neobis_smart_tailor/features/profile/domain/repository/profile_repo.dart';

@singleton
class UploadImageUseCase extends UseCase<void, File> {
  final ProfileRepo repo;

  UploadImageUseCase({required this.repo});
  @override
  Future<void> call(File params) async {
    return await repo.uploadImage(params);
  }
}
