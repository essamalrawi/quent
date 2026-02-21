import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quent/core/entities/full_user_entity.dart';
import 'package:quent/features/auth/login/domain/repos/login_repo.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.loginRepo) : super(SignInInitial());

  final LoginRepo loginRepo;

  Future<void> signIn({required String email, required String password}) async {
    emit(SignInLoading());

    final result = await loginRepo.signIn(email: email, password: password);

    result.fold(
      (failure) {
        print(failure.message);
        emit(SignInFailure(errorMessage: failure.message));
      },
      (userEntity) {
        emit(SignInSuccess(user: userEntity));
      },
    );
  }
}
