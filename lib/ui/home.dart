import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              child: Image.asset('images/Emblem_of_Sri_Lanka.png'),
            ),
            const SizedBox(
              height: 50,
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.black,
              height: 50,
              elevation: 5.0,
              child: const Text(
                'Apply Now',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.orange,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
