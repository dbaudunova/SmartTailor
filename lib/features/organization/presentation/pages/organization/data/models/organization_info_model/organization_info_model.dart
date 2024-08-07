import 'package:freezed_annotation/freezed_annotation.dart';

part 'organization_info_model.freezed.dart';
part 'organization_info_model.g.dart';

@freezed
class OrganizationInfoModel with _$OrganizationInfoModel {
  factory OrganizationInfoModel({
    required int? id,
    required String? imagePath,
    required String? name,
    required String? description,
    required String? createdAt,
  }) = _OrganizationInfoModel;

  factory OrganizationInfoModel.initial() {
    return OrganizationInfoModel(
      id: 0,
      imagePath: '',
      name: '',
      description: '',
      createdAt: '',
    );
  }

  factory OrganizationInfoModel.fromJson(Map<String, dynamic> json) => _$OrganizationInfoModelFromJson(json);
}
