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
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
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
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Valid email address is required`
  String get emailRequestError {
    return Intl.message(
      'Valid email address is required',
      name: 'emailRequestError',
      desc: '',
      args: [],
    );
  }

  /// `Accept`
  String get accept {
    return Intl.message(
      'Accept',
      name: 'accept',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `wait`
  String get wait {
    return Intl.message(
      'wait',
      name: 'wait',
      desc: '',
      args: [],
    );
  }

  /// `done`
  String get done {
    return Intl.message(
      'done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `GoChep`
  String get gochep {
    return Intl.message(
      'GoChep',
      name: 'gochep',
      desc: '',
      args: [],
    );
  }

  /// ` GoChep © {year} by Easy Way Services.`
  String splashViewFooter(Object year) {
    return Intl.message(
      ' GoChep © $year by Easy Way Services.',
      name: 'splashViewFooter',
      desc: '',
      args: [year],
    );
  }

  /// ` Let's go right away!`
  String get onBoardingViewLetDone {
    return Intl.message(
      ' Let\'s go right away!',
      name: 'onBoardingViewLetDone',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signInViewTitle {
    return Intl.message(
      'Sign In',
      name: 'signInViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Sign In to discover Amazing Services Near Around you`
  String get signInViewSubTitle {
    return Intl.message(
      'Sign In to discover Amazing Services Near Around you',
      name: 'signInViewSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get signInViewBtnLogin {
    return Intl.message(
      'Login',
      name: 'signInViewBtnLogin',
      desc: '',
      args: [],
    );
  }

  /// `Or connect using`
  String get signInViewOrProviderLabel {
    return Intl.message(
      'Or connect using',
      name: 'signInViewOrProviderLabel',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an Account? Sign Up`
  String get signInViewBtnSignUp {
    return Intl.message(
      'Don`t have an Account? Sign Up',
      name: 'signInViewBtnSignUp',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get signInViewBtnForgotPassword {
    return Intl.message(
      'Forgot password?',
      name: 'signInViewBtnForgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Connection error`
  String get dialogShowHttpErrorTitle {
    return Intl.message(
      'Connection error',
      name: 'dialogShowHttpErrorTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please check your internet connection and try again`
  String get dialogShowHttpErrorSub {
    return Intl.message(
      'Please check your internet connection and try again',
      name: 'dialogShowHttpErrorSub',
      desc: '',
      args: [],
    );
  }

  /// `Account disabled`
  String get dialogShowAccountDisabledTitle {
    return Intl.message(
      'Account disabled',
      name: 'dialogShowAccountDisabledTitle',
      desc: '',
      args: [],
    );
  }

  /// `your account is disabled, please contact support.`
  String get dialogShowAccountDisabledSub {
    return Intl.message(
      'your account is disabled, please contact support.',
      name: 'dialogShowAccountDisabledSub',
      desc: '',
      args: [],
    );
  }

  /// `Too many requests`
  String get dialogShowErrorTooManyRequestsTitle {
    return Intl.message(
      'Too many requests',
      name: 'dialogShowErrorTooManyRequestsTitle',
      desc: '',
      args: [],
    );
  }

  /// `wait a minute and try again`
  String get dialogShowErrorTooManyRequestsSub {
    return Intl.message(
      'wait a minute and try again',
      name: 'dialogShowErrorTooManyRequestsSub',
      desc: '',
      args: [],
    );
  }

  /// `Invalid credentials`
  String get dialogShowErrorCredentialsTitle {
    return Intl.message(
      'Invalid credentials',
      name: 'dialogShowErrorCredentialsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect email and/or password`
  String get dialogShowErrorCredentialsSub {
    return Intl.message(
      'Incorrect email and/or password',
      name: 'dialogShowErrorCredentialsSub',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect password`
  String get dialogShowErrorCredentialsSub2 {
    return Intl.message(
      'Incorrect password',
      name: 'dialogShowErrorCredentialsSub2',
      desc: '',
      args: [],
    );
  }

  /// `To continue`
  String get dialogShowEmailRequireTitle {
    return Intl.message(
      'To continue',
      name: 'dialogShowEmailRequireTitle',
      desc: '',
      args: [],
    );
  }

  /// `A valid email is required to continue`
  String get dialogShowEmailRequireSub {
    return Intl.message(
      'A valid email is required to continue',
      name: 'dialogShowEmailRequireSub',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
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
