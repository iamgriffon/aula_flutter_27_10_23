import 'package:flutter/material.dart';

class LoginTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Text('Salve'),
          passwordField(),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: Row(
              children: [Expanded(child: submitButton())],
            ),
          )
        ],
      ),
    );
  }

  Widget submitButton() {
    return Container(
      margin: const EdgeInsets.only(top: 12.0),
      child: ElevatedButton(onPressed: () {}, child: const Text('Enviar')),
    );
  }

  Widget emailField() {
    return const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(alignLabelWithHint: true, hintText: 'Email'),
    );
  }

  Widget passwordField() {
    return const TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Senha",
      ),
    );
  }
}
