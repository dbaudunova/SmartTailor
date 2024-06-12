import 'package:fpdart/fpdart.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/success.dart';
import 'package:neobis_smart_tailor/features/registration/data/models/registration_model/registration_model.dart';

abstract class RegistrationRepo {
  Future<Either<Failure, Success>> registration(
    RegistrationModel? registrationModel,
  );
}
