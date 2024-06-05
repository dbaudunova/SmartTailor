part of 'registration_bloc.dart';

class RegistrationState {
  final RegistrationModel registrationModel;

  RegistrationState(this.registrationModel);
}

class RegistrationModel {
  final String surname;
  final String name;
  final String fatherName;
  final String email;
  final String phone;
  final bool rememberMe;

  RegistrationModel({
    required this.surname,
    required this.name,
    required this.fatherName,
    required this.email,
    required this.phone,
    required this.rememberMe,
  });

  // bool get allPasswordValid {
  //   return (lenght ?? false) && (number ?? false) && (specChar ?? false) && (upperCase ?? false);
  // }

  // bool get isButtonAvailable {
  //   return allPasswordValid && email && login && passwordSimilar;
  // }

  factory RegistrationModel.initial() {
    return RegistrationModel(email: '', fatherName: '', name: '', surname: '', phone: '', rememberMe: true);
  }

  RegistrationModel copyWith({
    String? email,
    String? fatherName,
    String? name,
    String? surname,
    String? phone,
    bool? rememberMe,
  }) {
    return RegistrationModel(
      email: email ?? this.email,
      fatherName: fatherName ?? this.fatherName,
      name: name ?? this.name,
      surname: surname ?? this.surname,
      phone: phone ?? this.phone,
      rememberMe: rememberMe ?? this.rememberMe,
    );
  }
}
