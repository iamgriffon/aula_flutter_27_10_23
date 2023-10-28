import 'dart:async';

import 'package:email_validator/email_validator.dart';

class Validator {
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
      handleData: (email, sink) => {
            if (EmailValidator.validate(email))
              {sink.add(email)}
            else
              {sink.addError('Email inválido')}
          });
  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) => {
            if (password.length < 4)
              {sink.addError('Precisa ter pelo menos 4 caracteres')}
            else
              {sink.add(password)}
          });
}
