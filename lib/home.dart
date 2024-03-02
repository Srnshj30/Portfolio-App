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
            fontSize: 47,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
            // fontFamily: String.fromEnvironment(name),
            fontStyle: FontStyle.italic,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 15),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 25,
              color: Colors.black54,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ],
    );
  }

  _mySpecs(icon, tech) {
    return SizedBox(
      width: 145,
      height: 160,
      child: Card(
        color: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 85,
            ),
            const SizedBox(
              height: 0,
            ),
            Text(
              tech,
              style: const TextStyle(color: Colors.white, fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: PopupMenuButton(
          color: Colors.black,
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 1,
              child: TextButton(
                child: const Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'home');
                },
              ),
            ),
            PopupMenuItem(
              value: 2,
              child: TextButton(
                child: const Text(
                  'Projects',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'projects');
                },
              ),
            ),
            PopupMenuItem(
              value: 3,
              child: TextButton(
                child: const Text(
                  'About Me',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'about');
                },
              ),
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        // title: const Text("SlidingUpPanelExample"),
      ),
      body: SlidingUpPanel(
        // maxHeight: 500,
        borderRadius: BorderRadius.circular(30),
        panel: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _myAchievment('03', 'Projects'),
                  _myAchievment('04', 'Tech'),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Specialized In',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _mySpecs(Icons.android_outlined, 'C++'),
                    _mySpecs(Icons.android, 'Android'),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _mySpecs(Icons.android_outlined, 'Dart'),
                    _mySpecs(Icons.android, 'Flutter'),
                  ],
                ),
              ],
            )
          ],
        )),

        collapsed: Center(
          child: Container(
            decoration: BoxDecoration(
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

        body: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Stack(
                children: [
                  ShaderMask(
                    shaderCallback: (rect) {
                      return const LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                        colors: [Colors.black, Colors.transparent],
                      ).createShader(
                        Rect.fromLTRB(0, 0, rect.width, rect.height),
                      );
                    },
                    blendMode: BlendMode.dstIn,
                    child: Image.asset(
                      'assets/figure/img.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.56),
                    child: Column(
                      children: [
                        const Text(
                          'Hello, I am',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "S",
                              style: TextStyle(
                                fontSize: 55,
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 14),
                              child: const Text(
                                "ARANSH",
                                style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            const Text(
                              " J",
                              style: TextStyle(
                                fontSize: 55,
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 14),
                              child: const Text(
                                "INDAL",
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text(
                          'Software Developer',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
