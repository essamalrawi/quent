import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quent/features/auth/presentation/views/verify_your_phone_number_view.dart';
import 'package:quent/features/auth/presentation/views/widgets/password_field.dart';
import 'package:quent/features/auth/presentation/views/widgets/social_login_button.dart';
import 'package:quent/features/auth/presentation/views/widgets/verify_your_phone_number_view_body.dart';
import 'package:quent/features/auth/presentation/views/widgets/yes_no_choice.dart';
import '../../../../../const/resource.dart';
import '../../../../../core/presentation/widgets/custom_button.dart';
import '../../../../../core/utils/app_styles.dart';
import 'country_search_bar_suggestions.dart';
import 'custom_text_form_field.dart';
import 'have_an_account.dart';
import 'llocation_search_bar_suggetions.dart';
import 'or_divider.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  late String fullName, email, password, phone;
  late int countryId, locationId;
  bool createCar = false;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: _formKey,
              autovalidateMode: autoValidateMode,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  SvgPicture.asset(R.ASSETS_IMAGES_ICON_AUTH_VIEW_LOGO_SVG),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Sign Up', style: AppStyles.semibold30(context)),
                    ],
                  ),
                  const SizedBox(height: 40),
                  CustomTextFormField(
                    onSaved: (value) {
                      fullName = value!;
                    },
                    hintText: "Full Name",
                    textInputType: TextInputType.text,
                    obscureText: false,
                  ),
                  const SizedBox(height: 18),
                  CustomTextFormField(
                    hintText: "Email Address",
                    onSaved: (value) {
                      email = value!;
                    },
                    textInputType: TextInputType.emailAddress,
                    obscureText: false,
                  ),
                  const SizedBox(height: 18),
                  CustomTextFormField(
                    onSaved: (value) {
                      phone = value!;
                    },
                    hintText: "Phone number",
                    textInputType: TextInputType.number,
                    obscureText: false,
                  ),
                  const SizedBox(height: 18),
                  PasswordField(
                    onSaved: (value) {
                      password = value!;
                    },
                  ),

                  const SizedBox(height: 18),
                  CountrySearchBarSuggestions(
                    onSaved: (value) {
                      countryId = value!;
                    },
                  ),

                  const SizedBox(height: 18),
                  LocationSearchBarSuggetions(
                    onSaved: (value) {
                      locationId = value!;
                    },
                  ),

                  const SizedBox(height: 28),
                  YesNoChoice(
                    question: "Available to create a car?",
                    yesLabel: "Yes",
                    noLabel: "No",
                    yesIcon: Icons.check,
                    noIcon: Icons.close,
                    initialValue: 0,
                    onChanged: (c) {
                      createCar = c == 1;
                    },
                    enabled: true,
                    yesColor: const Color(0xFF21292B),
                    noColor: const Color(0xFF21292B),
                    selectedTextColor: const Color(0xFFEDEDED),
                    unselectedTextColor: const Color(0xFF21292B),
                    disabledColor: Colors.grey,
                  ),
                  const SizedBox(height: 28),
                  CustomButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        VerifyYourPhoneNumberView.routeName,
                      );
                      // if (_formKey.currentState!.validate()) {
                      //    _formKey.currentState!.save();
                      // context.read<SignUpCubit>().signUp(
                      //   fullName: fullName,
                      //   email: email,
                      //   password: password,
                      //   countryId: countryId,
                      //   phone: phone,
                      //   createCar: createCar,
                      //   locationId: locationId,
                      // );
                      //    }
                      // else {
                      //   setState(() {
                      //     autoValidateMode = AutovalidateMode.always;
                      //   });
                      // }

                      // Navigator.pushNamed(
                      //   context,
                      //   VerifyYourPhoneNumberView.routeName,
                      // );
                    },
                    text: "Sign Up",
                  ),
                  const SizedBox(height: 18),
                  CustomButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    fontColor: const Color(0xFF21292B),
                    backgroundColor: const Color(0xFFEDEDED),
                    text: "Login",
                  ),
                  const SizedBox(height: 28),
                  const OrDivider(),
                  const SizedBox(height: 28),
                  const SocialLoginButton(
                    text: "Apple pay",
                    imagePath: R.ASSETS_IMAGES_ICON_APPLE_LOGO_SVG,
                  ),
                  const SizedBox(height: 18),
                  const SocialLoginButton(
                    text: "Google pay",
                    imagePath: R.ASSETS_IMAGES_ICON_GOOGLE_LOGO_SVG,
                  ),
                  const SizedBox(height: 57),
                  const HaveAnAccount(),
                  const SizedBox(height: 57),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
