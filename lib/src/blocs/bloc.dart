import 'dart:async';

class Bloc {
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  Stream<String> get email => _emailController.stream;
  Stream<String> get password => _passwordController.stream;
  set setEmail(String param) => _emailController.sink.add(param);
  set setPassword(String param) => _passwordController.sink.add(param);
}
