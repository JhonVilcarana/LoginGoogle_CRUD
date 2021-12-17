import 'package:firebase_auth/firebase_auth.dart';
import 'package:frontend_application/src/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:frontend_application/src/repository/auth_repository.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepository extends AuthRepositoryBase {
  @override
  Future<void> SignOut() {
    // TODO: implement SignOut
    throw UnimplementedError();
  }

  @override
  // TODO: implement onAuthStateChanged
  Stream<AuthUser> get onAuthStateChanged => throw UnimplementedError();

  @override
  Future<AuthUser> signInAnonymously() {
    // TODO: implement signInAnonymously
    throw UnimplementedError();
  }
}
