// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(year) => " GoChep © ${year} by Easy Way Services.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "accept": MessageLookupByLibrary.simpleMessage("Accept"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "dialogShowAccountDisabledSub": MessageLookupByLibrary.simpleMessage(
            "your account is disabled, please contact support."),
        "dialogShowAccountDisabledTitle":
            MessageLookupByLibrary.simpleMessage("Account disabled"),
        "dialogShowEmailRequireSub": MessageLookupByLibrary.simpleMessage(
            "A valid email is required to continue"),
        "dialogShowEmailRequireTitle":
            MessageLookupByLibrary.simpleMessage("To continue"),
        "dialogShowErrorCredentialsSub": MessageLookupByLibrary.simpleMessage(
            "Incorrect email and/or password"),
        "dialogShowErrorCredentialsSub2":
            MessageLookupByLibrary.simpleMessage("Incorrect password"),
        "dialogShowErrorCredentialsTitle":
            MessageLookupByLibrary.simpleMessage("Invalid credentials"),
        "dialogShowErrorTooManyRequestsSub":
            MessageLookupByLibrary.simpleMessage("wait a minute and try again"),
        "dialogShowErrorTooManyRequestsTitle":
            MessageLookupByLibrary.simpleMessage("Too many requests"),
        "dialogShowHttpErrorSub": MessageLookupByLibrary.simpleMessage(
            "Please check your internet connection and try again"),
        "dialogShowHttpErrorTitle":
            MessageLookupByLibrary.simpleMessage("Connection error"),
        "done": MessageLookupByLibrary.simpleMessage("done"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "emailRequestError": MessageLookupByLibrary.simpleMessage(
            "Valid email address is required"),
        "gochep": MessageLookupByLibrary.simpleMessage("GoChep"),
        "onBoardingViewLetDone":
            MessageLookupByLibrary.simpleMessage(" Let\'s go right away!"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "signInViewBtnForgotPassword":
            MessageLookupByLibrary.simpleMessage("Forgot password?"),
        "signInViewBtnLogin": MessageLookupByLibrary.simpleMessage("Login"),
        "signInViewBtnSignUp": MessageLookupByLibrary.simpleMessage(
            "Don`t have an Account? Sign Up"),
        "signInViewOrProviderLabel":
            MessageLookupByLibrary.simpleMessage("Or connect using"),
        "signInViewSubTitle": MessageLookupByLibrary.simpleMessage(
            "Sign In to discover Amazing Services Near Around you"),
        "signInViewTitle": MessageLookupByLibrary.simpleMessage("Sign In"),
        "splashViewFooter": m0,
        "wait": MessageLookupByLibrary.simpleMessage("wait")
      };
}
