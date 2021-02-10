
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:mathcalculatorapp/main.dart';
import 'package:mathcalculatorapp/screen1/Design.dart';

class DivApp extends StatelessWidget {
  TextEditingController fnum=TextEditingController();
  TextEditingController snum=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("DIVISION"),
        ),
        body:  Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 20,),
              TextField(
                controller: fnum,
                decoration: InputDecoration(
                    labelText: "First Number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    )
                ),
              ),
              SizedBox(height: 20,),

              TextField(
                controller: snum,
                decoration: InputDecoration(
                    labelText: "Second Number",
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
                      var getFirstNumber=int.parse(fnum.text);
                      var getSecondNumber=int.parse(snum.text);
                      var result=getFirstNumber+getSecondNumber;
                      print(result);
                    },
                    child: Text("QUOTIENT",
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
                      var getFirstNumber=int.parse(fnum.text);
                      var getSecondNumber=int.parse(snum.text);
                      var result=getFirstNumber/getSecondNumber;
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
        ),
      ),
    );
  }
}
