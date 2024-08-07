import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_invite_model.freezed.dart';
part 'send_invite_model.g.dart';

@freezed
class SendInviteModel with _$SendInviteModel {
  factory SendInviteModel({
    required String surname,
    required String name,
    required String patronymic,
    required String email,
    required String phoneNumber,
    required String position,
  }) = _SendInviteModel;

  factory SendInviteModel.initial() {
    return SendInviteModel(
      email: '',
      name: '',
      patronymic: '',
      surname: '',
      phoneNumber: '',
      position: '',
    );
  }

  factory SendInviteModel.fromJson(Map<String, dynamic> json) => _$SendInviteModelFromJson(json);
}
