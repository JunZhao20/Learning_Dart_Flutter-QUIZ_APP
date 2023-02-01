import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // needs to be a function so the because in main.dart it needs
  // a function to be passed through
  final Function selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        // triggers function when pressed
        onPressed: selectHandler,
        child: const Text(
          'Answer 1',
          // change colour of text to white
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
