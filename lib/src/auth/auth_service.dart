import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  AuthService._();
  static final _instance = AuthService._();
  factory AuthService() {
    return _instance;
  }

  void signUpWithEmailAndPassword(String email, String password) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      print(e);
    }
  }
}