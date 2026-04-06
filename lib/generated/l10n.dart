// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome to\nQuent`
  String get onboarding_title_1 {
    return Intl.message(
      'Welcome to\nQuent',
      name: 'onboarding_title_1',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get onboarding_button_title {
    return Intl.message(
      'Get Started',
      name: 'onboarding_button_title',
      desc: '',
      args: [],
    );
  }

  /// `Lets Start\nA New Experience\nWith Car rental.`
  String get onboarding_title_2 {
    return Intl.message(
      'Lets Start\nA New Experience\nWith Car rental.',
      name: 'onboarding_title_2',
      desc: '',
      args: [],
    );
  }

  /// `Discover your next adventure with Qent. we’re here to provide you with a seamless car rental experience. Let’s get started on your journey.`
  String get onboarding_desc_2 {
    return Intl.message(
      'Discover your next adventure with Qent. we’re here to provide you with a seamless car rental experience. Let’s get started on your journey.',
      name: 'onboarding_desc_2',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back\nReady to hit the road.`
  String get login_title {
    return Intl.message(
      'Welcome Back\nReady to hit the road.',
      name: 'login_title',
      desc: '',
      args: [],
    );
  }

  /// `Email/Phone Number`
  String get login_email_phone_hint {
    return Intl.message(
      'Email/Phone Number',
      name: 'login_email_phone_hint',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get login_password_hint {
    return Intl.message(
      'Password',
      name: 'login_password_hint',
      desc: '',
      args: [],
    );
  }

  /// `Remember Me`
  String get remember_me {
    return Intl.message('Remember Me', name: 'remember_me', desc: '', args: []);
  }

  /// `Forgot Password?`
  String get forgot_password {
    return Intl.message(
      'Forgot Password?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login_button_title {
    return Intl.message(
      'Login',
      name: 'login_button_title',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get sign_up_button_title {
    return Intl.message(
      'Sign Up',
      name: 'sign_up_button_title',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or_continue_with {
    return Intl.message('Or', name: 'or_continue_with', desc: '', args: []);
  }

  /// `Apple Pay`
  String get apple_sign_in {
    return Intl.message('Apple Pay', name: 'apple_sign_in', desc: '', args: []);
  }

  /// `Google Pay`
  String get google_sign_in {
    return Intl.message(
      'Google Pay',
      name: 'google_sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get dont_have_an_account {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dont_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up.`
  String get login_sign_up_button {
    return Intl.message(
      'Sign Up.',
      name: 'login_sign_up_button',
      desc: '',
      args: [],
    );
  }

  /// `Reset your password`
  String get reset_your_password {
    return Intl.message(
      'Reset your password',
      name: 'reset_your_password',
      desc: '',
      args: [],
    );
  }

  /// `Enter the email address associated with your account and we'll send you a link to reset your password.`
  String get reset_password_desc {
    return Intl.message(
      'Enter the email address associated with your account and we\'ll send you a link to reset your password.',
      name: 'reset_password_desc',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get reset_password_email_hint {
    return Intl.message(
      'Email',
      name: 'reset_password_email_hint',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get reset_password_button_title {
    return Intl.message(
      'Continue',
      name: 'reset_password_button_title',
      desc: '',
      args: [],
    );
  }

  /// `Return to sign in`
  String get return_to_login {
    return Intl.message(
      'Return to sign in',
      name: 'return_to_login',
      desc: '',
      args: [],
    );
  }

  /// `Create a`
  String get create_account_title {
    return Intl.message(
      'Create a',
      name: 'create_account_title',
      desc: '',
      args: [],
    );
  }

  /// `New account`
  String get create_account_title_bold {
    return Intl.message(
      'New account',
      name: 'create_account_title_bold',
      desc: '',
      args: [],
    );
  }

  /// `Enter verification code`
  String get enter_verification_code_for_rest_password {
    return Intl.message(
      'Enter verification code',
      name: 'enter_verification_code_for_rest_password',
      desc: '',
      args: [],
    );
  }

  /// `We have sent a code to your phone`
  String get we_have_sent_code_to_your_phone {
    return Intl.message(
      'We have sent a code to your phone',
      name: 'we_have_sent_code_to_your_phone',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get reset_password_button {
    return Intl.message(
      'Continue',
      name: 'reset_password_button',
      desc: '',
      args: [],
    );
  }

  /// `Verification code`
  String get verification_code_success_alert_title {
    return Intl.message(
      'Verification code',
      name: 'verification_code_success_alert_title',
      desc: '',
      args: [],
    );
  }

  /// `Your code is:`
  String get verification_code_success_alert_disc {
    return Intl.message(
      'Your code is:',
      name: 'verification_code_success_alert_disc',
      desc: '',
      args: [],
    );
  }

  /// `Please use it within 10 seconds.`
  String get verification_code_success_alert_disc_2 {
    return Intl.message(
      'Please use it within 10 seconds.',
      name: 'verification_code_success_alert_disc_2',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get verification_code_error_alert_title_incorrect_code {
    return Intl.message(
      'Error',
      name: 'verification_code_error_alert_title_incorrect_code',
      desc: '',
      args: [],
    );
  }

  /// `The code you entered is incorrect. Please try again.`
  String get verification_code_error_alert_disc_incorrect_code {
    return Intl.message(
      'The code you entered is incorrect. Please try again.',
      name: 'verification_code_error_alert_disc_incorrect_code',
      desc: '',
      args: [],
    );
  }

  /// `Input Required`
  String get verification_code_error_alert_title_input_required {
    return Intl.message(
      'Input Required',
      name: 'verification_code_error_alert_title_input_required',
      desc: '',
      args: [],
    );
  }

  /// `Please fill in the required field before submitting.`
  String get verification_code_error_alert_disc_input_required {
    return Intl.message(
      'Please fill in the required field before submitting.',
      name: 'verification_code_error_alert_disc_input_required',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get verification_code_error_alert_title_server_failure {
    return Intl.message(
      'Error',
      name: 'verification_code_error_alert_title_server_failure',
      desc: '',
      args: [],
    );
  }

  /// `Enter new password`
  String get enter_new_password {
    return Intl.message(
      'Enter new password',
      name: 'enter_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Please make sure both passwords match`
  String get enter_new_password_desc {
    return Intl.message(
      'Please make sure both passwords match',
      name: 'enter_new_password_desc',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get new_password_hint {
    return Intl.message(
      'Password',
      name: 'new_password_hint',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get confirm_new_password_hint {
    return Intl.message(
      'Confirm password',
      name: 'confirm_new_password_hint',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get new_password_button_title {
    return Intl.message(
      'Continue',
      name: 'new_password_button_title',
      desc: '',
      args: [],
    );
  }

  /// `Password changed`
  String get password_change_success_alert_title {
    return Intl.message(
      'Password changed',
      name: 'password_change_success_alert_title',
      desc: '',
      args: [],
    );
  }

  /// `Your password has been changed successfully.`
  String get password_change_success_alert_disc {
    return Intl.message(
      'Your password has been changed successfully.',
      name: 'password_change_success_alert_disc',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get sign_up_title {
    return Intl.message('Sign Up', name: 'sign_up_title', desc: '', args: []);
  }

  /// `Full Name`
  String get sign_up_full_name_hint {
    return Intl.message(
      'Full Name',
      name: 'sign_up_full_name_hint',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get sign_up_email_hint {
    return Intl.message(
      'Email Address',
      name: 'sign_up_email_hint',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get sign_up_phone_hint {
    return Intl.message(
      'Phone Number',
      name: 'sign_up_phone_hint',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get sign_up_password_hint {
    return Intl.message(
      'Password',
      name: 'sign_up_password_hint',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get sign_up_country_hint {
    return Intl.message(
      'Country',
      name: 'sign_up_country_hint',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get sign_up_location_hint {
    return Intl.message(
      'Location',
      name: 'sign_up_location_hint',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'available_to_creat_a_car?' key

  /// `Yes`
  String get yes {
    return Intl.message('Yes', name: 'yes', desc: '', args: []);
  }

  /// `No`
  String get no {
    return Intl.message('No', name: 'no', desc: '', args: []);
  }

  /// `National ID`
  String get national_id_hint {
    return Intl.message(
      'National ID',
      name: 'national_id_hint',
      desc: '',
      args: [],
    );
  }

  /// `Date of Birth`
  String get date_of_birth_hint {
    return Intl.message(
      'Date of Birth',
      name: 'date_of_birth_hint',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get sign_up_button {
    return Intl.message('Sign Up', name: 'sign_up_button', desc: '', args: []);
  }

  /// `Login`
  String get login_button {
    return Intl.message('Login', name: 'login_button', desc: '', args: []);
  }

  /// `Apple Pay`
  String get sign_up_with_apple {
    return Intl.message(
      'Apple Pay',
      name: 'sign_up_with_apple',
      desc: '',
      args: [],
    );
  }

  /// `Google Pay`
  String get sign_up_with_google {
    return Intl.message(
      'Google Pay',
      name: 'sign_up_with_google',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'already_have_an_account?' key

  /// `Sign In.`
  String get sign_up_login_button {
    return Intl.message(
      'Sign In.',
      name: 'sign_up_login_button',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message('Skip', name: 'skip', desc: '', args: []);
  }

  /// `Verify your phone number`
  String get verify_your_phone_number {
    return Intl.message(
      'Verify your phone number',
      name: 'verify_your_phone_number',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'we_have_sent_code_you_an_sms_with a code to number' key

  /// `Country`
  String get verify_phone_number_country_code_hint {
    return Intl.message(
      'Country',
      name: 'verify_phone_number_country_code_hint',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get verify_phone_number_phone_number_hint {
    return Intl.message(
      'Phone Number',
      name: 'verify_phone_number_phone_number_hint',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get verify_phone_number_button_title {
    return Intl.message(
      'Continue',
      name: 'verify_phone_number_button_title',
      desc: '',
      args: [],
    );
  }

  /// `Someething went wrong`
  String get verify_phone_number_error_alert_title {
    return Intl.message(
      'Someething went wrong',
      name: 'verify_phone_number_error_alert_title',
      desc: '',
      args: [],
    );
  }

  /// `We have sent a code to: `
  String get we_have_sent_code_to {
    return Intl.message(
      'We have sent a code to: ',
      name: 'we_have_sent_code_to',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[Locale.fromSubtags(languageCode: 'en')];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
