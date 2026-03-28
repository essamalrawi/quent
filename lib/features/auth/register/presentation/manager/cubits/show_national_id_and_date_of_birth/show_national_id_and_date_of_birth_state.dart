part of 'show_national_id_and_date_of_birth_cubit.dart';

@immutable
sealed class ShowNationalIdAndDateOfBirthState extends Equatable {
  List<Object?> get props => [];
}

final class ShowNationalIdAndDateOfBirthInitial
    extends ShowNationalIdAndDateOfBirthState {}

final class ShowNationalIdAndDateOfBirthSetChange
    extends ShowNationalIdAndDateOfBirthState {}
