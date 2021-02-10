
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:mathcalculatorapp/screen1/Design.dart';
import 'package:mathcalculatorapp/screen1/Div.dart';
import 'package:mathcalculatorapp/screen1/add.dart';
import 'package:mathcalculatorapp/screen1/mult.dart';
import 'package:mathcalculatorapp/screen1/sub.dart';

void main()
{
  runApp(MathCal());
}
class MathCal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
    home: Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text("MATH CALCULATOR"),
        backgroundColor: Colors.teal,
      ),
      body: DesignPage(),
    ),
   );
  }
}
