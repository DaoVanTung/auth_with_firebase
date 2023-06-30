import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  AuthService._();
  static final _instance = AuthService._();
  factory AuthService() {
    return _instance;
  }

  Future signUpWithEmailAndPassword(String email, String password) async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future signInWithEmailAndPassword(String email, String password) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}
