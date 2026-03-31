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

  /// `Welcome to Quent`
  String get onboarding_title_1 {
    return Intl.message(
      'Welcome to Quent',
      name: 'onboarding_title_1',
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

  /// `Get Started`
  String get onboarding_button_title {
    return Intl.message(
      'Get Started',
      name: 'onboarding_button_title',
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
  String get applle_sign_in {
    return Intl.message(
      'Apple Pay',
      name: 'applle_sign_in',
      desc: '',
      args: [],
    );
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

  // skipped getter for the 'dont_have_an_account?' key

  /// `Sign Up.`
  String get sign_up {
    return Intl.message('Sign Up.', name: 'sign_up', desc: '', args: []);
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

  /// `Enter the email address associated with your account and we\'ll send you a link to reset your password.`
  String get reset_password_desc {
    return Intl.message(
      'Enter the email address associated with your account and we\\\'ll send you a link to reset your password.',
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

  // skipped getter for the 'return to_login' key

  // skipped getter for the 'create account_title' key

  // skipped getter for the 'create account_title_bold' key

  // skipped getter for the 'enter_verification_code for_rest_password' key

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

  /// `Your code is: `
  String get verification_code_success_alert_disc {
    return Intl.message(
      'Your code is: ',
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

  /// `Please fill in the required field before submitting.`
  String
  get verification_code_error_alert_title_when_code_entered_is_incorrect_title {
    return Intl.message(
      'Please fill in the required field before submitting.',
      name:
          'verification_code_error_alert_title_when_code_entered_is_incorrect_title',
      desc: '',
      args: [],
    );
  }

  /// `Please fill in the required field before submitting.`
  String
  get verification_code_error_alert_title_when_code_entered_is_incorrect_disc {
    return Intl.message(
      'Please fill in the required field before submitting.',
      name:
          'verification_code_error_alert_title_when_code_entered_is_incorrect_disc',
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
