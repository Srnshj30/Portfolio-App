import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({super.key});

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
 
  
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 44, 44, 44),
        title: const Text('Projects'),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.95,
                height: 200,
                child: Card(
                  color: const Color.fromARGB(255, 44, 44, 44),
                  child: Container(
                    margin: const EdgeInsets.only(top: 20, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Portfolio App',
                          style: TextStyle(color: Colors.white, fontSize: 35),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'This is my protfolio application.',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          '23th Feb 2024 - 27th Feb 2024',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Project Link',
                              style: TextStyle(color: Colors.white),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(FontAwesomeIcons.linkedinIn),
                              color: Colors.white,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.95,
                height: 200,
                child: Card(
                  color: const Color.fromARGB(255, 44, 44, 44),
                  child: Container(
                    margin: const EdgeInsets.only(top: 20, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Portfolio App',
                          style: TextStyle(color: Colors.white, fontSize: 35),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'This is my protfolio application.',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          '23th Feb 2024 - 27th Feb 2024',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Project Link',
                              style: TextStyle(color: Colors.white),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(FontAwesomeIcons.linkedinIn),
                              color: Colors.white,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.95,
                height: 200,
                child: Card(
                  color: const Color.fromARGB(255, 44, 44, 44),
                  child: Container(
                    margin: const EdgeInsets.only(top: 20, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Portfolio App',
                          style: TextStyle(color: Colors.white, fontSize: 35),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'This is my protfolio application.',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          '23th Feb 2024 - 27th Feb 2024',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Project Link',
                              style: TextStyle(color: Colors.white),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(FontAwesomeIcons.linkedinIn),
                              color: Colors.white,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.95,
                height: 200,
                child: Card(
                  color: const Color.fromARGB(255, 44, 44, 44),
                  child: Container(
                    margin: const EdgeInsets.only(top: 20, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Portfolio App',
                          style: TextStyle(color: Colors.white, fontSize: 35),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'This is my protfolio application.',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          '23th Feb 2024 - 27th Feb 2024',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Project Link',
                              style: TextStyle(color: Colors.white),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(FontAwesomeIcons.linkedinIn),
                              color: Colors.white,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.95,
                height: 200,
                child: Card(
                  color: const Color.fromARGB(255, 44, 44, 44),
                  child: Container(
                    margin: const EdgeInsets.only(top: 20, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Portfolio App',
                          style: TextStyle(color: Colors.white, fontSize: 35),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'This is my protfolio application.',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          '23th Feb 2024 - 27th Feb 2024',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Project Link',
                              style: TextStyle(color: Colors.white),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(FontAwesomeIcons.github),
                              color: Colors.white,
                            )
                          ],
                        ),
                      ],
                    ),
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
