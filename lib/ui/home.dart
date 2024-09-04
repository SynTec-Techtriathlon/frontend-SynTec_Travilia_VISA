import 'package:flutter/material.dart';
import 'package:visa_app/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(children: [
          Text('Home page', style: headingStyle),
        ]),
      ),
    );
  }
}
