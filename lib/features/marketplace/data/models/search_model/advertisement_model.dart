import 'package:freezed_annotation/freezed_annotation.dart';

part 'advertisement_model.freezed.dart';
part 'advertisement_model.g.dart';

@freezed
class AdvertisementModel with _$AdvertisementModel {
  const factory AdvertisementModel(
      {required int id,
      required String name,
      required String description,
      required double? price,
      required String imageUrl,
      required String? authorFullName,
      required String? authorImageUrl,
      required String? type}) = _AdvertisementModel;

  factory AdvertisementModel.fromJson(Map<String, dynamic> json) => _$AdvertisementModelFromJson(json);
}

@freezed
class AdvertisementResponseModel with _$AdvertisementResponseModel {
  const factory AdvertisementResponseModel({
    required List<AdvertisementModel> advertisement,
    required bool isLast,
    required int totalCount,
  }) = _AdvertisementResponseModel;

  factory AdvertisementResponseModel.fromJson(Map<String, dynamic> json) => _$AdvertisementResponseModelFromJson(json);
}
