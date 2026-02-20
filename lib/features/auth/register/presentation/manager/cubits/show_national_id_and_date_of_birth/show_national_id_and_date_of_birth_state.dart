part of 'show_national_id_and_date_of_birth_cubit.dart';

@immutable
sealed class ShowNationalIdAndDateOfBirthState {}

final class ShowNationalIdAndDateOfBirthInitial
    extends ShowNationalIdAndDateOfBirthState {}

final class ShowNationalIdAndDateOfBirthSetChange
    extends ShowNationalIdAndDateOfBirthState {}
