import 'package:auth_with_firebase/src/auth/auth_service.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    AuthService().signUpWithEmailAndPassword(
      'gmail@tung.com',
      '12345678',
    );
    return const Placeholder();
  }
}
