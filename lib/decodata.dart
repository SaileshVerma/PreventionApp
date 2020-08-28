

import 'package:flutter/material.dart';




class DecoData extends StatelessWidget {

final String txt;
final Color color;
final String image;
final String description;
DecoData(this.txt,this.color,this.image,this.description);


void nav(BuildContext ctx){
Navigator.of(ctx).pushNamed(
  '/steps',
  arguments: {

   
    'txt':txt,
    'image' :image, 
    'desc':description,
    'color':color
  }
);

}

  @override
  Widget build(BuildContext context) {
    return 
       InkWell(
        splashColor: color,
       borderRadius: BorderRadius.circular(9),
        onTap: ()=>nav(context),

              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
          elevation: 19,
          margin: EdgeInsets.fromLTRB(20, 60, 30, 5),
          color: color,
           child: Padding(
             padding: const EdgeInsets.all(10.0),
             child: Text(txt,style: TextStyle(
               fontSize: 35
             ), ),
           ),


        ),
      );
    
  }
}