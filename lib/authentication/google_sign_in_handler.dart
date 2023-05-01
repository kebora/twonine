import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:twonine/authentication/authentication.dart';
import 'package:twonine/home/home.dart';

class GoogleSignInHandler {
  //create an instance of the google sign in class
  final googleSignIn = GoogleSignIn();
  final FirebaseAuth auth = FirebaseAuth.instance;
  //
  void handleSignIn() async {
    try {
      final account = await googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await account!.authentication;

      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final UserCredential userCredential =
          await auth.signInWithCredential(credential);
      final User user = userCredential.user!;
      await user.updateEmail(account.email).whenComplete(() {
        Get.off(
          HomeView(googleSignInAccount: account),
        );
      });
    } catch (e) {
      Get.snackbar(
        "Oops, no 29!",
        "Ensure an account is selected, and also check internet connectivity!",
      );
    }
  }

  //
  void handleSignOut() async {
    googleSignIn.signOut().whenComplete(() {
      Get.off(
        const AuthenticationPage(),
      );
    });
  }

  //
  void handAuthStateChanges() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user != null) {
        Get.off(
          HomeView(
            googleSignInAccount: googleSignIn.currentUser!,
          ),
        );
      }
    });
  }

  //
}
