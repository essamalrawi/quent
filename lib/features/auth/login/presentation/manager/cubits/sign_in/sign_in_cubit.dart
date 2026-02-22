import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quent/core/entities/full_user_entity.dart';
import 'package:quent/features/auth/login/domain/use_cases/sign_in_use_case.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.signInUseCase) : super(SignInInitial());

  final SignInUseCase signInUseCase;

  Future<void> signIn({required String email, required String password}) async {
    emit(SignInLoading());

    final result = await signInUseCase.call(
      SignInParams(email: email, password: password),
    );

    result.fold(
      (failure) {
        emit(SignInFailure(errorMessage: failure.message));
      },
      (userEntity) {
        emit(SignInSuccess(user: userEntity));
      },
    );
  }
}
