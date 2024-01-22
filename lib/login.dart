import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login(this.start, {super.key});
  final void Function() start;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style:
            ElevatedButton.styleFrom(foregroundColor: Colors.deepPurpleAccent),
        onPressed: () {
          start();
        },
        child: const Text(
          "Login",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
