import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quent/core/entities/full_user_entity.dart';
import 'package:quent/features/auth/register/domain/repos/register_repo.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.registerRepo) : super(SignUpInitial());

  final RegisterRepo registerRepo;

  Future<void> signUp({
    required String fullName,
    required String email,
    required String password,
    required int countryId,
    required String phone,
    required bool createCar,
    required int locationId,
    String? nationalId,
    String? dateOfBirth,
  }) async {
    emit(SignUpLoading());

    final result = await registerRepo.signUp(
      fullName: fullName,
      email: email,
      password: password,
      countryId: countryId,
      phone: phone,
      createCar: createCar,
      locationId: locationId,
      nationalId: nationalId,
      dateOfBirth: dateOfBirth,
    );

    result.fold(
      (failure) {
        print(failure.message);
        emit(SignUpFailure(errorMessage: failure.message));
      },
      (userEntity) {
        emit(SignUpSuccess(user: userEntity));
      },
    );
  }
}
