import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final FirebaseAuth _fireAuth = FirebaseAuth.instance;

  User? get currentUser => _fireAuth.currentUser;

  Stream<User?> get authStateChanges => _fireAuth.authStateChanges();

  Future<void> signInWEmailPass({
      required String email,
      required String pass,
  }) async {
    await _fireAuth.signInWithEmailAndPassword(
      email: email,
      password: pass,
      );
  }

  Future<void> createUserWEmailPass({
      required String email,
      required String pass,
  }) async {
    await _fireAuth.createUserWithEmailAndPassword(
      email: email,
      password: pass,
      );
  }

  Future<void> signTFOut() async {
    await _fireAuth.signOut();
  }

}

