import 'package:flutter/material.dart';

// Allows main.dart to define the change of questions to UI
// Which also allows the main.dart to be cleaner when styling
class Question extends StatelessWidget {
  final String questionText;

  // This constructor creates an instance of questionText
  Question(this.questionText);

  @override
  // defines the questionText on the UI
  Widget build(BuildContext context) {
    //styling of text
    return Container(
        //checks full width of device to centre the text
        width: double.infinity,
        //creates space around the widget
        margin: EdgeInsets.all(50),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 28),
          // allows centre alignment for questionText
          textAlign: TextAlign.center,
        ));
  }
}
