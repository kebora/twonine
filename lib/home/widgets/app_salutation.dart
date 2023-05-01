import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AppSalutation extends StatelessWidget {
  const AppSalutation({
    super.key,
    required this.googleSignInAccount,
  });
  final GoogleSignInAccount googleSignInAccount;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
          text: 'Welcome back ',
          style: const TextStyle(
            fontFamily: "Montserrat",
            fontSize: 19,
          ),
          children: <InlineSpan>[
            TextSpan(
              text: '${googleSignInAccount.displayName},',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat",
                  color: Colors.blue.shade200),
            )
          ]),
    );
  }
}
