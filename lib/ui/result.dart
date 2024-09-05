import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String result;
  final String message;

  const ResultPage({required this.result, required this.message, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Submission Result',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              result == 'Success' ? Icons.check_circle : Icons.error,
              color: result == 'Success' ? Colors.green : Colors.red,
              size: 100,
            ),
            SizedBox(height: 20),
            Text(
              result == 'Success'
                  ? 'Submission Successful!'
                  : 'Submission Failed!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: result == 'Success' ? Colors.green : Colors.red,
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
