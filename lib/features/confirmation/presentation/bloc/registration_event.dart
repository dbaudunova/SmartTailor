part of 'registration_bloc.dart';

abstract class RegistrationEvent {}

class Registration extends RegistrationEvent {
  final RegistrationModel registrationModel;
  Registration({
    required this.registrationModel,
  });
}
