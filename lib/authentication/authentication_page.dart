import 'package:flutter/material.dart';
import 'package:twonine/authentication/authentication_view.dart';
import 'package:twonine/authentication/google_sign_in_handler.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    GoogleSignInHandler googleSignInHandler = GoogleSignInHandler();
    //check whether a user is currently logged in
    googleSignInHandler.handAuthStateChanges();
    return const AuthenticationView();
  }
}
