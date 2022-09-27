import 'package:ecommerce_app/src/features/authentication/domain/app_user.dart';

class FakeAuthRepository {
  Stream<AppUser?> authStateChanges() => Stream.value(null); //TODO: Update
  AppUser? get currentUser => null; //TODO: Update

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    // TODO: Implement
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    // TODO: Implement
  }

  Future<void> signOut() async {
    // TODO: implement
  }
}
