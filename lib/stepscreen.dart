import 'package:flutter/material.dart';

class StepScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routearg = ModalRoute.of(context).settings.arguments as Map;

    final rtext = routearg['txt'];
    final rimage = routearg['image'];
    final rdesc = routearg['desc'];
    final rcolor = routearg['color'];

    return Scaffold(
        appBar: AppBar(
          title: Text(rtext),
          backgroundColor: rcolor,
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 10,
              margin: EdgeInsets.all(7),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: AssetImage(rimage),
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11)),
              elevation: 10,
              margin: EdgeInsets.all(10),
              child: Padding(

                padding: const EdgeInsets.all(8.0),
                child: Text(
                  rdesc,
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ],
        ));
  }
}
