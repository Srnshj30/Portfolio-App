import 'package:flutter/material.dart';
import 'package:portfolio_app/projects.dart';

import 'about.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (context) => const MyHome(),
        'about': (context) => const MyAbout(),
        'projects': (context) => const MyProjects(),
      },
    );
  }
}
