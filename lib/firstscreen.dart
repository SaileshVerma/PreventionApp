import 'package:flutter/material.dart';
import 'package:onlyprac/data.dart';
import 'decodata.dart';



class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Column(
      
      children: 
      
           data.map((catData) => DecoData(
             catData.tx, 
             catData.color,
             catData.image,
             catData.desc)).toList(),

      
    );
  
  }
}