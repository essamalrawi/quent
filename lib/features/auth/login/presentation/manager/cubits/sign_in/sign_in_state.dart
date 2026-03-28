part of 'sign_in_cubit.dart';

@immutable
sealed class SignInState extends Equatable {
  const SignInState();

  @override
  List<Object?> get props => [];
}

final class SignInInitial extends SignInState {}

final class SignInLoading extends SignInState {}

final class SignInFailure extends SignInState {
  final String errorMessage;

  const SignInFailure({required this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}

final class SignInSuccess extends SignInState {
  final FullUserEntity user;

  const SignInSuccess({required this.user});

  @override
  List<Object?> get props => [user];
}
