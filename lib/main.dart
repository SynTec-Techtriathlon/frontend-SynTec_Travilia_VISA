import 'package:flutter/material.dart';
import 'package:visa_app/ui/application.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
