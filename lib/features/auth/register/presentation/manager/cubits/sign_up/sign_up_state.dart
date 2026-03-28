part of 'sign_up_cubit.dart';

@immutable
sealed class SignUpState extends Equatable {
  List<Object?> get props => [];
}

final class SignUpInitial extends SignUpState {}

final class SignUpLoading extends SignUpState {}

final class SignUpSuccess extends SignUpState {
  final FullUserEntity user;

  SignUpSuccess({required this.user});
  @override
  List<Object?> get props => [user];
}

final class SignUpFailure extends SignUpState {
  final String errorMessage;

  SignUpFailure({required this.errorMessage});
  @override
  List<Object?> get props => [errorMessage];
}
