
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:mathcalculatorapp/main.dart';
import 'package:mathcalculatorapp/screen1/Design.dart';

class SubApp extends StatelessWidget {
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("SUBTRACTION"),
        ),
      body:Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            controller: num1,
            decoration: InputDecoration(
                labelText: "Enter Number1",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                )
            ),
          ),
          SizedBox(height: 10,),
          TextField(
            controller: num2,
            decoration: InputDecoration(
                labelText: "Enter Number 2",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                )
            ),
          ),
          SizedBox(height: 10,),
          SizedBox(
            height: 60,
            width: double.infinity,
            child:  RaisedButton(
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
                onPressed: ()
                {
                  var getNumberOne=int.parse(num1.text);
                  var getNumberTwo=int.parse(num2.text);
                  var result=getNumberOne-getNumberTwo;
                  print(result);
                },
                child: Text("SUB",
                  style:TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                  ),
                )
            ),
          ),
          SizedBox(
            height: 60,
            width: double.infinity,
            child:  RaisedButton(
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
                onPressed: ()
                {
                  var getNumberOne=int.parse(num1.text);
                  var getNumberTwo=int.parse(num2.text);
                  var result=getNumberOne-getNumberTwo;
                  print(result);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DesignPage()));
                },
                child: Text("GO BACK",
                  style:TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                  ),
                )
            ),
          )

        ],
      ),
      )
      )
    );
  }
}
