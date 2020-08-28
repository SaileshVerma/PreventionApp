import 'package:flutter/material.dart';




class New extends StatelessWidget {
  final String  ds;
  New(String no, {this.ds});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(ds),
    );
  }
}