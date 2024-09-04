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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('images/Emblem_of_Sri_Lanka.png'),
              width: 200,
            ),
            SizedBox(
              height: 50,
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.black,
              child: Text(
                'Apply Now',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              height: 50,
              textColor: Colors.orange,
              elevation: 5.0,
            )
            // Image(image: AssetImage('images/Emblem_of_Sri_Lanka.png'))
          ],
        ),
      ),
    );
  }
}

