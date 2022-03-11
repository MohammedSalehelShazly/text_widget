import 'package:flutter/material.dart';
import 'package:text_widget/text_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Widget',
      home: Scaffold(
      appBar: AppBar(
        title: Text('Text Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 20),
          children: [
            
            TextWidget('App Title takes (0.9) of screen width', widthRatio: .9,),

            TextWidget('Half Screen Width',
              widthRatio: .5,
            ),

            TextWidget('hint',
              widthRatio: .05,
              style: TextStyle(
                backgroundColor: Colors.yellow
              ),
            ),
            
            TextWidget('it\'s constrained by custom screen width size.',
              widthRatio: .8,
            ),

            TextWidget('but a text takes just one line', widthRatio: .6),
            
            TextWidget('by, Mohammed Saleh', widthRatio: .25),
            
            ],
          ),
        ),
    );
  }
}