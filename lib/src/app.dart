import 'package:aula_1/src/telas/login_tela.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'login', home: Scaffold(body: LoginTela()));
  }
}
