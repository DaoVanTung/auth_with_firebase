import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'auth_controller.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final emailKey = GlobalKey<FormFieldState>();
    final passwordKey = GlobalKey<FormFieldState>();
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign Up',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              TextFormField(
                key: emailKey,
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
                validator: (email) {
                  if (email == null || email.isEmpty) {
                    return 'Email không thể bỏ trống!';
                  }

                  final bool emailValid = RegExp(
                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                  ).hasMatch(email);

                  if (emailValid == false) {
                    return 'Email không hợp lệ';
                  }

                  return null;
                },
              ),
              TextFormField(
                key: passwordKey,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Không được bỏ trống mật khẩu';
                  }
                  if (value.length < 8) {
                    return 'Mật khẩu phải có 8 ký tự trở lên!';
                  }
                  return null;
                },
              ),
              AnimatedBuilder(
                animation: AuthController(),
                builder: (context, child) {
                  if (AuthController().isBusy) {
                    return const CircularProgressIndicator();
                  }
                  return ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState?.validate() == true) {
                        final email = emailKey.currentState?.value;
                        final password = passwordKey.currentState?.value;

                        AuthController()
                            .signInWithEmailAndPassword(
                          email,
                          password,
                        )
                            .then(
                          (value) {
                            if (FirebaseAuth.instance.currentUser != null) {
                              Navigator.pushReplacementNamed(context, 'home');
                            }
                          },
                        );
                      }
                    },
                    child: const Text('Sign up'),
                  );
                },
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, 'sign_in');
                },
                child: const Text('Sign in'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
