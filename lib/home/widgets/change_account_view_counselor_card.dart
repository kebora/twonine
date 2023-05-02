import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twonine/constants.dart';

class ChangeAccountViewCounselorCard extends StatelessWidget {
  const ChangeAccountViewCounselorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
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
              ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView(
                        children: [
                          Text(
                            "Pick your specialization",
                            style: textStyle,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Chip(
                                label: Text(
                                  "Depression",
                                  style: textStyle,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Chip(
                                label: Text(
                                  "Alone Together",
                                  style: textStyle,
                                ),
                              ),
                            ],
                          ),
                          Center(
                            child: IconButton(
                                icon: const Icon(Icons.camera),
                                onPressed: () {}),
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              hintText: "Display Name",
                            ),
                          ),

                          const TextField(
                            decoration: InputDecoration(
                              hintText: "Occupation",
                            ),
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              hintText: "Year of Birth",
                            ),
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              hintText: "Gender",
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          ElevatedButton(
                              onPressed: () {}, child: const Text("Save"))
                          // SizedBox(
                          //   width: MediaQuery.of(context).size.width,
                          //   child: DropdownButton<String>(
                          //     value: dropdownValue,
                          //     icon: const Icon(Icons.arrow_downward),
                          //     elevation: 16,
                          //     style: const TextStyle(color: Colors.deepPurple),
                          //     underline: Container(
                          //       height: 2,
                          //       color: Colors.deepPurpleAccent,
                          //     ),
                          //     onChanged: (String? value) {},
                          //     items: allServices
                          //         .map<DropdownMenuItem<String>>((String value) {
                          //       return DropdownMenuItem<String>(
                          //         value: value,
                          //         child: Text(value),
                          //       );
                          //     }).toList(),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ));
                },
                child: const Text(
                  "Edit",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
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
      ),
    );
  }
}
