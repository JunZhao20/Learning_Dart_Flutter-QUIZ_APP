import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = ['what\'s your fave colour', 'what\'s your fave animal'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            const Text('The question!'),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
