import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/home_screen.dart';
import 'package:my_portfolio/pages/project_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ayush Kumar Singh Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // fontFamily: ,
        primarySwatch: Colors.amber,
      ),
      // home: const MyHomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/project1': (context) => ProjectSection(
              projectid: 0,
            ),
        '/project2': (context) => ProjectSection(
              projectid: 1,
            ),
        '/project3': (context) => ProjectSection(
              projectid: 2,
            ),
        '/project4': (context) => ProjectSection(
              projectid: 3,
            ),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return HomePage(
      projectId: 0,
    );
  }
}
