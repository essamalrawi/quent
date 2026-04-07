import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'show_national_id_and_date_of_birth_state.dart';

class ShowNationalIdAndDateOfBirthCubit
    extends Cubit<ShowNationalIdAndDateOfBirthState> {
  ShowNationalIdAndDateOfBirthCubit()
    : super(ShowNationalIdAndDateOfBirthInitial());
  bool showIt = false;

  void setChange() {
    showIt = !showIt;
    emit(ShowNationalIdAndDateOfBirthSetChange());
  }
}
