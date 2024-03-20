import 'package:stacked/stacked_annotations.dart';

@LazySingleton()
abstract class AuthService with InitializableDependency {
  Future signInWithEmail(
      {required String email, required String password}) async {}

  Future signUpWithEmail(
      {required String email, required String password}) async {}

  Future resetPassword({required String password}) async {}

  Future resetPasswordRequest({required String email}) async {}

  Future signOut() async {}

  Future signInAnonymously() async {}

  void dispose();
}
