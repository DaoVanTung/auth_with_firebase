import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'auth_service.dart';

class AuthController extends ChangeNotifier {
  AuthController._();
  static final _instance = AuthController._();
  factory AuthController() {
    return _instance;
  }

  final service = AuthService();

  bool isBusy = false;

  Future signUpWithEmailAndPassword(
    BuildContext context,
    email,
    String password,
  ) async {
    isBusy = true;
    notifyListeners();
    try {
      await service.signUpWithEmailAndPassword(email, password);

      // ignore: use_build_context_synchronously
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Thông báo'),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.done),
                Text('Đăng ký thành công!'),
              ],
            ),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Đóng'),
              ),
            ],
          );
        },
      );
    } on FirebaseAuthException catch (e) {
      print(e.code);
      if (e.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('email-already-in-use'),
          ),
        );
      } else if (e.code == 'operation-not-allowed') {}
    }
    isBusy = false;
    notifyListeners();
  }

  Future signInWithEmailAndPassword(String email, String password) async {
    await service.signInWithEmailAndPassword(email, password);
  }
}
