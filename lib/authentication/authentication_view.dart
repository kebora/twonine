import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:particles_fly/particles_fly.dart';
import 'package:twonine/authentication/google_sign_in_handler.dart';

class AuthenticationView extends StatelessWidget {
  const AuthenticationView({super.key});

  @override
  Widget build(BuildContext context) {
    GoogleSignInHandler googleSignInHandler = GoogleSignInHandler();
    //
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              ParticlesFly(
                connectDots: true,
                numberOfParticles: 29,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                speedOfParticles: 0.5,
              ),
              const Center(
                child: Text(
                  "Stay connected with people who support and understand you.",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 27,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: ElevatedButton.icon(
                          onPressed: () => googleSignInHandler.handleSignIn(),
                          icon: const Icon(FontAwesomeIcons.google),
                          label: const Text(
                            "Continue with Google",
                            style: TextStyle(fontFamily: "Montserrat"),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
