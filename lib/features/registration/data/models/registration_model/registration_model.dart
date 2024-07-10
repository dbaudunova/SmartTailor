import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_model.freezed.dart';
part 'registration_model.g.dart';

@freezed
class RegistrationModel with _$RegistrationModel {
  const RegistrationModel._(); // Добавляем приватный конструктор

  const factory RegistrationModel({
    required String surname,
    required String name,
    required String fatherName,
    required String email,
    required String phone,
    required bool rememberMe,
  }) = _RegistrationModel;

  factory RegistrationModel.initial() {
    return const RegistrationModel(
      surname: '',
      name: '',
      fatherName: '',
      email: '',
      phone: '',
      rememberMe: true,
    );
  }

  factory RegistrationModel.fromJson(Map<String, dynamic> json) => _$RegistrationModelFromJson(json);

  // Добавляем геттер
  bool get isButtonAvailable {
    return surname.isNotEmpty && name.isNotEmpty && fatherName.isNotEmpty && email.isNotEmpty && phone.isNotEmpty;
  }
}
