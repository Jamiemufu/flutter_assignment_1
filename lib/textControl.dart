import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function changeText;

  TextControl(this.changeText);

  Widget build(BuildContext context) {
    return 
      RaisedButton(
        color: Colors.deepOrange,
        child: Text("Click button to change",
            style: TextStyle(
              color: Colors.white
            )
          ),
        onPressed: changeText,
      );
  }
}