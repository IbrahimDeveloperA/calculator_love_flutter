import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(Love());

class Love extends StatefulWidget {
  @override
  _LoveState createState() => _LoveState();
}

class _LoveState extends State<Love> {
  TextEditingController _textFieldController = TextEditingController();
  TextEditingController _textFieldController2 = TextEditingController();
  int _result = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Love Calculator",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Text Center",
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.green,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              // color: Colors.amber,
              child: TextField(
                controller: _textFieldController,
                style: TextStyle(color: Colors.green),
                decoration: InputDecoration(
                  labelText: 'Введите текст',
                  labelStyle: TextStyle(fontSize: 16.0),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.pinkAccent[100],
              child: TextField(
                controller: _textFieldController2,
                style: TextStyle(color: Colors.green),
                decoration: InputDecoration(
                  labelText: 'Введите текст',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _result = int.parse(_textFieldController.text) +int.parse(_textFieldController2.text)  ;
                  //  _result = _textFieldController.text;
                  });
                },
                child: Text(
                  'Calculator Love',
                  style: TextStyle(fontSize: 28.0,),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                _result.toString(),
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.cyanAccent,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}