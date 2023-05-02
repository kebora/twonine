import 'package:flutter/material.dart';
import 'package:twonine/constants.dart';
import 'package:twonine/home/widgets/change_account_view_counselor_card.dart';

class ChangeAccountView extends StatelessWidget {
  const ChangeAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Change Account",
          style: textStyle,
        ),
        backgroundColor: Colors.blue.shade200,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text.rich(
              TextSpan(
                  text: "This is how your ",
                  style: textStyle,
                  children: const [
                    TextSpan(
                        text: "PROFILE",
                        style: TextStyle(fontWeight: FontWeight.w800)),
                    TextSpan(
                      text: " looks like.",
                    ),
                  ]),
            ),
            const ChangeAccountViewCounselorCard(),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Description",
              style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
