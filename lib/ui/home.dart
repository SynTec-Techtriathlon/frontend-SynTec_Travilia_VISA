import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:visa_app/theme.dart';
import 'package:visa_app/ui/application.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        alignment: Alignment.center,
        color: onSurfaceClr,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Visa Application',
              style: mainheadingStyle,
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 400,
              child: Image.asset('assets/images/travel.png'),
            ),
            const SizedBox(
              height: 50,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyFormPage()),
                );
              },
              color: Colors.black,
              height: 60,
              minWidth: 300,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide.none,
              ),
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                child: Text(
                  'Apply Now',
                  style: mainButtonStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
