import 'package:flutter/material.dart';
import 'package:twonine/constants.dart';

class AppCounselorCard extends StatelessWidget {
  const AppCounselorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Depression",
              style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "View all(29)",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              height: 250,
              width: 200,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                      ),
                      const Text(
                        "Daniel Kebora",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontFamily: "Montserrat",
                        ),
                      ),
                      Text(
                        "Software Dev.",
                        style: textStyleBold,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "21F ",
                            style: textStyle,
                          ),
                          const Icon(
                            Icons.verified,
                            color: Colors.black,
                            // color: Colors.blue.shade200,
                          ),
                          Text(
                            " Kenya",
                            style: textStyle,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Not Active",
                            style: textStyle,
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
