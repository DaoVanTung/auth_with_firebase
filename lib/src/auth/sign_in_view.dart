import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    print(FirebaseAuth.instance.currentUser);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign In',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'sign_up');
              },
              child: const Text('Go to sign up'),
            ),
          ],
        ),
      ),
    );
  }
}
