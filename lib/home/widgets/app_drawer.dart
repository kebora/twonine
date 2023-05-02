import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:twonine/authentication/authentication.dart';
import 'package:twonine/constants.dart';
import 'package:twonine/home/change_account_view.dart';

class AppDrawerView extends StatelessWidget {
  const AppDrawerView({
    super.key,
    required this.googleSignInAccount,
  });
  final GoogleSignInAccount googleSignInAccount;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage:
                    NetworkImage("${googleSignInAccount.photoUrl}"),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                googleSignInAccount.email,
                style: textStyle,
              ),
              const SizedBox(
                height: 10,
              ),
              IconButton(
                onPressed: () {
                  // Get.snackbar(
                  //   "Hey ${googleSignInAccount.displayName}",
                  //   "Click again to update your verification color.",
                  //   snackPosition: SnackPosition.BOTTOM,
                  // );
                },
                icon: Icon(
                  Icons.verified,
                  color: Colors.blue.shade200,
                ),
              ),
              const Text(
                "Counselor",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {
                  Get.to(
                    () => const ChangeAccountView(),
                    transition: Transition.native,
                  );
                },
                leading: const Icon(Icons.account_circle),
                title: Text(
                  "Change account",
                  style: textStyle,
                ),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.chat_rounded),
                title: Text(
                  "Chatrooms",
                  style: textStyle,
                ),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(
                  Icons.verified,
                  color: Colors.blue.shade200,
                ),
                title: Text(
                  "Verified Counselors",
                  style: textStyle,
                ),
              ),
              ListTile(
                onTap: () {
                  Get.defaultDialog(
                      title: "Logout?",
                      middleText: "You will be required to sign in again.",
                      actions: [
                        TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text("Cancel"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            GoogleSignIn().signOut().whenComplete(() {
                              Get.offAll(
                                const AuthenticationPage(),
                              );
                            });
                          },
                          child: const Text("Sure"),
                        ),
                      ]);
                },
                leading: const Icon(Icons.logout),
                title: Text(
                  "Logout",
                  style: textStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
