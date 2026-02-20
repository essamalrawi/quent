import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quent/features/auth/register/presentation/manager/cubits/show_national_id_and_date_of_birth/show_national_id_and_date_of_birth_cubit.dart';
import '../../../../../../core/components/buttons/custom_button.dart';
import '../../../../../../core/components/buttons/social_login_button.dart';
import '../../../../../../core/components/forms/password_field.dart';
import '../../../../../../core/resources/app_styles.dart';
import '../../../../../../generated/assets.gen.dart';
import '../../manager/cubits/sign_up/sign_up_cubit.dart';
import 'yes_no_choice.dart';
import 'country_search_bar_suggestions.dart';
import '../../../../../../core/components/forms/custom_text_form_field.dart';
import '../../../../login/presentation/pages/widgets/have_an_account.dart';
import 'location_search_bar_suggetions.dart';
import '../../../../login/presentation/pages/widgets/or_divider.dart';

class SignUpPageBody extends StatefulWidget {
  const SignUpPageBody({super.key});

  @override
  State<SignUpPageBody> createState() => _SignUpPageBodyState();
}

class _SignUpPageBodyState extends State<SignUpPageBody> {
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  late String fullName, email, password, phone;
  late int countryId, locationId;
  bool createCar = false;
  String? nationalId, dateOfBirth;
  TextEditingController dobController = TextEditingController();
  int selectedValue = 0;

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
                  SvgPicture.asset(Assets.images.icon.authViewLogo),
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
                  LocationSearchBarSuggestions(
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
                      if (c == selectedValue) return;
                      createCar = c == 1;
                      selectedValue = c;
                      context
                          .read<ShowNationalIdAndDateOfBirthCubit>()
                          .setChange();
                    },
                    enabled: true,
                    yesColor: const Color(0xFF21292B),
                    noColor: const Color(0xFF21292B),
                    selectedTextColor: const Color(0xFFEDEDED),
                    unselectedTextColor: const Color(0xFF21292B),
                    disabledColor: Colors.grey,
                  ),
                  BlocBuilder<
                    ShowNationalIdAndDateOfBirthCubit,
                    ShowNationalIdAndDateOfBirthState
                  >(
                    builder: (context, state) {
                      return context
                              .watch<ShowNationalIdAndDateOfBirthCubit>()
                              .showIt
                          ? Column(
                              children: [
                                const SizedBox(height: 18),
                                CustomTextFormField(
                                  hintText: "National Id",
                                  onSaved: (value) {
                                    nationalId = value!;
                                  },
                                  textInputType: TextInputType.text,
                                  obscureText: false,
                                ),
                                const SizedBox(height: 18),
                                CustomTextFormField(
                                  textEditingController: dobController,
                                  hintText: "Date Of Birth",

                                  onTap: () async {
                                    DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime(2000),
                                      firstDate: DateTime(1900),
                                      lastDate: DateTime.now(),
                                    );

                                    if (pickedDate != null) {
                                      dobController.text =
                                          "${pickedDate.day}-${pickedDate.month}-${pickedDate.year}";

                                      dateOfBirth =
                                          "${pickedDate.year}-${pickedDate.month}-${pickedDate.day}";
                                    }
                                  },
                                  textInputType: TextInputType.text,
                                  obscureText: false,
                                  readonly: true,
                                ),
                              ],
                            )
                          : SizedBox();
                    },
                  ),

                  const SizedBox(height: 28),
                  CustomButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        context.read<SignUpCubit>().signUp(
                          fullName: fullName,
                          email: email,
                          password: password,
                          countryId: countryId,
                          phone: phone,
                          createCar: createCar,
                          locationId: locationId,
                          nationalId: nationalId,
                          dateOfBirth: dateOfBirth,
                        );
                      } else {
                        setState(() {
                          autoValidateMode = AutovalidateMode.always;
                        });
                      }
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
                  SocialLoginButton(
                    text: "Apple pay",
                    imagePath: Assets.images.icon.appleLogo,
                  ),
                  const SizedBox(height: 18),
                  SocialLoginButton(
                    text: "Google pay",
                    imagePath: Assets.images.icon.googleLogo,
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
