import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neobis_smart_tailor/features/marketplace/data/models/general_model/general_model.dart';

part 'general_responce.freezed.dart';
part 'general_responce.g.dart';

@freezed
class GeneralResponceModel with _$GeneralResponceModel {
  factory GeneralResponceModel({
    @JsonKey(name: 'advertisement') required List<GeneralOrderModel> listModels,
    required bool? isLast,
    required int? totalCount,
  }) = _GeneralResponceModel;

  factory GeneralResponceModel.initial() {
    return GeneralResponceModel(
      listModels: [],
      isLast: null,
      totalCount: null,
    );
  }

  factory GeneralResponceModel.fromJson(Map<String, dynamic> json) =>
      _$GeneralResponceModelFromJson(json);
}
