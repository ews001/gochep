import 'dart:async';

import 'package:gochep/generated/l10n.dart';

class Validators {
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
      handleData: (String email, EventSink<String> sink) {
    if (email.contains('@') || email.isEmpty) {
      sink.add(email);
    } else {
      sink.addError(S.current.emailRequestError);
    }
  });

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (String password, EventSink<String> sink) {
    if (password.length > 3) {
      sink.add(password);
    } else {
      sink.addError('Enter must be at least 4 characters');
    }
  });
}
