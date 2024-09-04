import 'package:flutter/material.dart';
import 'package:visa_app/ui/application.dart';
import 'package:visa_app/ui/home.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyFormPage(),
       routes: {
        // '/login': (context) => LoginScreen(),
        // '/home': (context) => HomePage(),
      },
    );
  }
}