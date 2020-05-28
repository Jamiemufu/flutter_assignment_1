// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';

import './text.dart';
import './textControl.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String _changedText = "This text will change when button is clicked";

  void _changeText() {
    setState(() {
      _changedText = "Text has changed";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("App Bar"),
            backgroundColor: Colors.deepOrange,
          ),
          body: Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 25),
              padding: EdgeInsets.all(25),
              child: Column(children: <Widget>[
                CustomText(
                  _changedText,
                ),
                TextControl(_changeText),
              ]
            )
          )
        )
      );
  }
}
