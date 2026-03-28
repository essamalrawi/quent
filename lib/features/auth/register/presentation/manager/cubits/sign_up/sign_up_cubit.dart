import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:quent/core/entities/full_user_entity.dart';
import 'package:quent/features/auth/register/domain/use_cases/sign_up_use_case.dart';
part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.signUpUseCase) : super(SignUpInitial());

  final SignUpUseCase signUpUseCase;

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

    final result = await signUpUseCase.call(
      SignUpParams(
        fullName: fullName,
        email: email,
        password: password,
        countryId: countryId,
        phone: phone,
        createCar: createCar,
        locationId: locationId,
        nationalId: nationalId,
        dateOfBirth: dateOfBirth,
      ),
    );

    result.fold(
      (failure) {
        emit(SignUpFailure(errorMessage: failure.message));
      },
      (userEntity) {
        emit(SignUpSuccess(user: userEntity));
      },
    );
  }
}
