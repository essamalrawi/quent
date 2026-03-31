import 'package:dartz/dartz.dart';
import 'package:quent/core/utils/typedefs.dart';
import 'package:quent/features/shared_features/data/domain/entities/full_user_entity.dart';
import 'package:quent/core/errors/faluire.dart';
import 'package:quent/core/use_cases/use_cases.dart';
import 'package:quent/features/auth/register/domain/repos/register_repo.dart';

class SignUpUseCase extends UseCase<FullUserEntity, SignUpParams> {
  final RegisterRepo registerRepo;

  SignUpUseCase(this.registerRepo);

  @override
  ResultFuture<FullUserEntity> call([SignUpParams? signUp]) async {
    if (signUp == null) {
      return Left(InvalidParamsFailure("Invalid params failure"));
    }
    return await registerRepo.signUp(
      countryId: signUp.countryId,
      createCar: signUp.createCar,
      email: signUp.email,
      fullName: signUp.fullName,
      locationId: signUp.locationId,
      password: signUp.password,
      phone: signUp.phone,
      dateOfBirth: signUp.dateOfBirth,
      nationalId: signUp.nationalId,
    );
  }
}

class SignUpParams {
  final int countryId;
  final bool createCar;
  final String email;
  final String fullName;
  final int locationId;
  final String password;
  final String phone;
  final String? dateOfBirth;
  final String? nationalId;
  SignUpParams({
    required this.countryId,
    required this.createCar,
    required this.email,
    required this.fullName,
    required this.locationId,
    required this.password,
    required this.phone,
    this.dateOfBirth,
    this.nationalId,
  });
}
