import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:twonine/constants.dart';
import 'package:twonine/home/widgets/app_drawer.dart';
import 'package:twonine/home/widgets/app_salutation.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
    required this.googleSignInAccount,
  });
  final GoogleSignInAccount googleSignInAccount;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.searchengin),
          ),
        ],
      ),
      drawer: AppDrawerView(
        googleSignInAccount: googleSignInAccount,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            AppSalutation(googleSignInAccount: googleSignInAccount),
          ],
        ),
      )),
    );
  }
}
