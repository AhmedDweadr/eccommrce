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

  // skipped getter for the ' Onboarding Screen Strings' key

  /// `TOMOTO`
  String get TOMOTO {
    return Intl.message('TOMOTO', name: 'TOMOTO', desc: '', args: []);
  }

  /// `Welcome to Tomoto, Let's shop!`
  String get Welcome {
    return Intl.message(
      'Welcome to Tomoto, Let\'s shop!',
      name: 'Welcome',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get Continue {
    return Intl.message('Continue', name: 'Continue', desc: '', args: []);
  }

  // skipped getter for the 'Profile Completion Strings' key

  /// `Sign Up`
  String get Sign_Up {
    return Intl.message('Sign Up', name: 'Sign_Up', desc: '', args: []);
  }

  /// `Complete Profile`
  String get Complete_Profile {
    return Intl.message(
      'Complete Profile',
      name: 'Complete_Profile',
      desc: '',
      args: [],
    );
  }

  /// `Please provide your details to continue`
  String get Please_provide_your_details_to_continue {
    return Intl.message(
      'Please provide your details to continue',
      name: 'Please_provide_your_details_to_continue',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get First_Name {
    return Intl.message('First Name', name: 'First_Name', desc: '', args: []);
  }

  /// `Enter your first name`
  String get Enter_your_First_Name {
    return Intl.message(
      'Enter your first name',
      name: 'Enter_your_First_Name',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get Last_Name {
    return Intl.message('Last Name', name: 'Last_Name', desc: '', args: []);
  }

  /// `Enter your last name`
  String get Enter_your_Last_Name {
    return Intl.message(
      'Enter your last name',
      name: 'Enter_your_Last_Name',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get Phone_Number {
    return Intl.message(
      'Phone Number',
      name: 'Phone_Number',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone number`
  String get Enter_your_Phone_Number {
    return Intl.message(
      'Enter your phone number',
      name: 'Enter_your_Phone_Number',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get Adress {
    return Intl.message('Address', name: 'Adress', desc: '', args: []);
  }

  /// `Enter your address`
  String get Enter_your_Adress {
    return Intl.message(
      'Enter your address',
      name: 'Enter_your_Adress',
      desc: '',
      args: [],
    );
  }

  /// `By continuing you confirm that you agree\nwith our Terms and Conditions`
  String get Discription {
    return Intl.message(
      'By continuing you confirm that you agree\nwith our Terms and Conditions',
      name: 'Discription',
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
      Locale.fromSubtags(languageCode: 'ar'),
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
