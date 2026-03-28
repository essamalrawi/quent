part of 'otp_cubit.dart';

@immutable
sealed class OtpState extends Equatable {
  List<Object?> get props => [];
}

final class OtpInitial extends OtpState {}

final class OtpClear extends OtpState {}
