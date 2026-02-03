import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../domain/entities/request_verify_phone_entity.dart';

part 'verify_phone_number_state.dart';

class VerifyPhoneNumberCubit extends Cubit<VerifyPhoneNumberState> {
  VerifyPhoneNumberCubit() : super(VerifyPhoneNumberInitial());
}
