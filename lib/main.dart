import 'package:flutter/material.dart';
import 'package:visa_app/theme.dart';
import 'package:visa_app/ui/application.dart';
import 'package:visa_app/ui/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Themes.light,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(),
      routes: {
        // '/login': (context) => LoginScreen(),
        // '/home': (context) => HomePage(),
      },
    );
  }
}
