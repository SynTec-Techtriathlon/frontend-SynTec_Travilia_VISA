import 'package:flutter/material.dart';
import 'package:visa_app/ui/home.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
       routes: {
        // '/login': (context) => LoginScreen(),
        // '/home': (context) => HomePage(),
      },
    );
  }
}