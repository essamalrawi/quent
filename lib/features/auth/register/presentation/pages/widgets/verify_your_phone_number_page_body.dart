import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quent/core/resources/app_styles.dart';
import 'package:quent/features/main/home/presentation/pages/home_page.dart';
import '../../../../../../core/components/buttons/custom_button.dart';
import '../../../../../../core/components/forms/custom_text_form_field.dart';
import '../../../../../../generated/assets.gen.dart';
import '../../manager/cubits/verify_phone_number/verify_phone_number_cubit.dart';
import '../verification_code_page.dart';
import 'country_search_bar_suggestions.dart';

class VerifyYourPhoneNumberPageBody extends StatefulWidget {
  const VerifyYourPhoneNumberPageBody({super.key});

  @override
  State<VerifyYourPhoneNumberPageBody> createState() =>
      _VerifyYourPhoneNumberPageBodyState();
}

class _VerifyYourPhoneNumberPageBodyState
    extends State<VerifyYourPhoneNumberPageBody> {
  late String phone;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                const SizedBox(height: 20),
                Row(
                  children: [
                    SvgPicture.asset(Assets.images.icon.authViewLogo),
                    const Spacer(),

                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                          context,
                          HomePage.routeName,
                        );
                      },

                      child: Text(
                        "Skip",
                        style: AppStyles.regular14(
                          context,
                        ).copyWith(color: const Color(0xFF232323)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const Spacer(),
                  Text(
                    'Verify your phone number',
                    textAlign: TextAlign.center,
                    style: AppStyles.semibold30(
                      context,
                    ).copyWith(color: const Color(0xFF232323)),
                  ),
                  const SizedBox(height: 16),

                  Text(
                    'We have sent you an SMS with a code to number',
                    style: AppStyles.regular14(
                      context,
                    ).copyWith(color: const Color(0xFF7F7F7F)),
                  ),

                  const SizedBox(height: 40),

                  CountrySearchBarSuggestions(onSaved: (value) {}),
                  const SizedBox(height: 18),
                  CustomTextFormField(
                    onSaved: (value) {
                      phone = value!;
                    },
                    hintText: "Phone number",
                    textInputType: TextInputType.number,
                    obscureText: false,
                  ),
                  const SizedBox(height: 28),
                  CustomButton(
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        context
                            .read<VerifyPhoneNumberCubit>()
                            .requestVerifyCode(phone: phone);
                      } else {
                        autoValidateMode = AutovalidateMode.always;
                      }
                    },
                    text: "Continue",
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
