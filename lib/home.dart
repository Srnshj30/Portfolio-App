import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
// import 'package:wtf_sliding_sheet/wtf_sliding_sheet.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  _myAchievment(String num, String text) {
    return Row(
      children: [
        Text(
          num,
          style: const TextStyle(
            fontSize: 45,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      drawer: const Drawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        // title: const Text("SlidingUpPanelExample"),
      ),
      body: SlidingUpPanel(
        // maxHeight: 500,
        borderRadius: BorderRadius.circular(30),
        panel: Center(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _myAchievment('3', 'Projects'),
                  _myAchievment('4', 'Tech'),
                ],
              ),
            )
          ],
        )),
        collapsed: Center(
          child: Container(
            decoration: BoxDecoration(
              // color: const Color.fromARGB(255, 152, 195, 216),
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     const Text(
                //       'A',
                //       style: TextStyle(
                //         fontSize: 35,
                //         fontWeight: FontWeight.bold,
                //         // fontFeatures: FontFeature(font),
                //         color: Colors.black,
                //       ),
                //     ),
                //     Container(
                //       margin: const EdgeInsets.only(top: 6),
                //       child: const Text(
                //         'BOUT ',
                //         style: TextStyle(
                //           fontSize: 25,
                //           fontWeight: FontWeight.bold,
                //           // fontFeatures: FontFeature(font),
                //           color: Colors.black,
                //         ),
                //       ),
                //     ),
                //     const Text(
                //       'M',
                //       style: TextStyle(
                //         fontSize: 35,
                //         fontWeight: FontWeight.bold,
                //         // fontFeatures: FontFeature(font),
                //         color: Colors.black,
                //       ),
                //     ),
                //     Container(
                //       margin: const EdgeInsets.only(top: 6),
                //       child: const Text(
                //         'E',
                //         style: TextStyle(
                //           fontSize: 25,
                //           fontWeight: FontWeight.bold,
                //           // fontFeatures: FontFeature(font),
                //           color: Colors.black,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                SizedBox(
                  height: 70,
                ),
                Text(
                  '(Swipe up to know more)',
                  style: TextStyle(color: Colors.black38, fontSize: 13),
                )
              ],
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://content.presspage.com/uploads/1369/1920_olderblackperson-944175.jpg?10000',
              ),
              const SizedBox(
                height: 37,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "S",
                    style: TextStyle(
                      fontSize: 45,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: const Text(
                      "ARANSH",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const Text(
                    " J",
                    style: TextStyle(
                      fontSize: 45,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      // fontWeight: FontWeight.bold,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: const Text(
                      "INDAL",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              const Text(
                "ANDROID DEVELOPER",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              const SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
