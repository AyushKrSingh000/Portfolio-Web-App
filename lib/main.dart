import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/home_screen.dart';
import 'package:my_portfolio/pages/project_screen.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/routes/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Ayush Kumar Singh Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // fontFamily: ,
        primarySwatch: Colors.amber,
      ),
      // home: const MyHomePage(),
      initialRoute: '/',
      getPages: routes,
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return HomePage(
//       projectId: 0,
//     );
//   }
// }
