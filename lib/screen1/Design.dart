

import 'package:flutter/material.dart';
import 'package:mathcalculatorapp/main.dart';
import 'package:mathcalculatorapp/screen1/Div.dart';
import 'package:mathcalculatorapp/screen1/add.dart';
import 'package:mathcalculatorapp/screen1/mult.dart';
import 'package:mathcalculatorapp/screen1/sub.dart';


class DesignPage extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return  Container(
             margin: EdgeInsets.all(20),
             child: Column(
               children: [
                 SizedBox(height: 20,),
                 SizedBox(height:60,
                   width: double.infinity,
                   child: RaisedButton(
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(30)
                     ),
                     onPressed:()
                     {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>AddScreen()));
                     },
                     child: Text("ADDITION"),
                   ),
                 ),
                 SizedBox(height: 20,),
                 SizedBox(
                   height: 60,
                   width: double.infinity,
                   child: RaisedButton(
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(30)
                     ),
                     onPressed: ()
                     {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>SubApp()));
                     },
                     child: Text("SUBTRACTION"),
                   ),
                 ),
                 SizedBox(height: 20,),
                 SizedBox(
                   height: 60,
                   width: double.infinity,
                   child: RaisedButton(
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(30)
                     ),
                     onPressed: ()
                     {
                       Navigator.push(context, MaterialPageRoute(builder:(context)=>MultScreen()));
                     },
                     child: Text("MULTIPLICATION"),
                   ),
                 ),
                 SizedBox(height: 20,),
                 SizedBox(
                   height: 60,
                   width: double.infinity,
                   child:  RaisedButton(
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(30)
                     ),
                     onPressed: ()
                     {
                       Navigator.push(context, MaterialPageRoute(builder:(context)=>DivApp()));
                     },
                     child: Text("DIVISION"),
                   ),
                 ) ,
               ],
             )
     );
   }
 }
