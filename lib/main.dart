import 'package:flutter/material.dart';
import 'screens/sign_in.dart';

void main() {
  runApp(RegisterPage());
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: SignPage(),
    );
  }
}
