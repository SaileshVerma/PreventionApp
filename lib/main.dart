import 'package:flutter/material.dart';
import './stepscreen.dart';

import './firstscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my parc app',
      home: MyHomePage(),
      routes: {
        '/steps': (ctx) => StepScreen(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/prev1.jpg'), 
              fit: BoxFit.cover)
              ),
      child: Scaffold(
          appBar: AppBar(
            title: Text("MYPRACAPP"),
            backgroundColor: Colors.teal[600],
          ),
          backgroundColor: Colors.transparent,
          body: FirstScreen()),
    );
  }
}
