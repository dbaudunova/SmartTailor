import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_detail_model.freezed.dart';
part 'service_detail_model.g.dart';

@freezed
class ServiceDetailModel with _$ServiceDetailModel {
  factory ServiceDetailModel({
    required int id,
    required String name,
    required String description,
    required int price,
    required String contactInfo,
    required String authorImage,
    required String authorFullName,
    required List<String> serviceImages,
  }) = _ServiceDetailModel;

  factory ServiceDetailModel.initial() {
    return ServiceDetailModel(
      id: 0,
      name: '',
      description: '',
      price: 0,
      contactInfo: '',
      authorImage: '',
      authorFullName: '',
      serviceImages: [],
    );
  }

  factory ServiceDetailModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceDetailModelFromJson(json);
}
