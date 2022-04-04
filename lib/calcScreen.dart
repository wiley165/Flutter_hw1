import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:labone/listScreen.dart';

class CalcScreen extends StatefulWidget {
  @override
  State createState() => new CalcState();
}

class CalcState extends State<CalcScreen> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = new TextEditingController(text: "");
  final TextEditingController t2 = new TextEditingController(text: "");

  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void doClear() {
    setState(() {
      t1.text = "";
      t2.text = "";
    });
  }

  Widget buildFirst() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          width: 600.0,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.number,
            controller: t1,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.texture,
                  color: Color(0xff1672F9),
                ),
                hintText: 'First Number',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget buildSecond() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          width: 600.0,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.number,
            controller: t2,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.terrain,
                  color: Color(0xff1672F9),
                ),
                hintText: 'Second Number',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget buildAdd() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.centerLeft,
      //width: 100.0,
      child: ElevatedButton(
        child: Text(
          '+',
          style: TextStyle(
              color: Color(0xff1672F9),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          doAddition();
        },
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.grey,
          elevation: 5,
          padding: EdgeInsets.all(15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          primary: Colors.white,
        ),
      ),
    );
  }

  Widget buildSub() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.centerLeft,
      //width: 100.0,
      child: ElevatedButton(
        child: Text(
          '-',
          style: TextStyle(
              color: Color(0xff1672F9),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          doSub();
        },
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.grey,
          elevation: 5,
          padding: EdgeInsets.all(15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          primary: Colors.white,
        ),
      ),
    );
  }

  Widget buildMult() {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        //width: 100.0,
        child: ElevatedButton(
          child: Text(
            '*',
            style: TextStyle(
                color: Color(0xff1672F9),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            doMul();
          },
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.grey,
            elevation: 5,
            padding: EdgeInsets.all(15),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            primary: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget buildDiv() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.center,
      //width: 100.0,
      child: ElevatedButton(
        child: Text(
          '/',
          style: TextStyle(
              color: Color(0xff1672F9),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          doDiv();
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          onPrimary: Colors.grey,
          elevation: 5.0,
          padding: EdgeInsets.all(15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          //primary: Colors.white,
        ),
      ),
    );
  }

  Widget buildClear() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.centerRight,
      //width: 100.0,
      child: ElevatedButton(
        child: Text(
          'Clear',
          style: TextStyle(
              color: Color(0xff1672F9),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          doClear();
        },
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.grey,
          elevation: 5,
          padding: EdgeInsets.all(15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          primary: Colors.white,
        ),
      ),
    );
  }

  Widget buildShowRes() {
    Widget okButton = TextButton(
      child: Text(
        "OK",
        style: TextStyle(
            color: Color(0xff1672F9),
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
      onPressed: () => Navigator.pop(context),
    );
    AlertDialog alert = AlertDialog(
      title: Text(
        "Result",
        style: TextStyle(
            color: Color(0xff1672F9),
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.amber,
      content: Text(
        sum.toString(),
        style: TextStyle(
            color: Color(0xff1672F9),
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
      actions: [
        okButton,
      ],
    );
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.centerRight,
      //width: 100.0,
      child: ElevatedButton(
        child: Text(
          'Result',
          style: TextStyle(
              color: Color(0xff1672F9),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          if(t1.text != "" && t2.text != ""){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ListScreen()),
            );
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return alert;
              },
            );
          };
        },
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.grey,
          elevation: 10.0,
          padding: EdgeInsets.all(15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          primary: Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
        backgroundColor: Colors.amber,
      ),
      body: new Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xff00FEEF),
              Color(0xff09EBEE),
              Color(0xff28ACEA),
              Color(0xff1672F9),
            ])),
          padding: EdgeInsets.all(40.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              /*
                      new TextField(
                        keyboardType: TextInputType.number,
                        decoration:
                            new InputDecoration(hintText: "Enter Number 1"),
                        controller: t1,
                      ),
                      new TextField(
                        keyboardType: TextInputType.number,
                        decoration:
                            new InputDecoration(hintText: "Enter Number 2"),
                        controller: t2,
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                      ),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new MaterialButton(
                            child: new Text("+"),
                            color: Colors.white,
                            onPressed: doAddition,
                          ),
                          new MaterialButton(
                            child: new Text("-"),
                            color: Colors.white,
                            onPressed: doSub,
                          ),
                        ],
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                      ),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new MaterialButton(
                            child: new Text("*"),
                            color: Colors.white,
                            onPressed: doMul,
                          ),
                          new MaterialButton(
                            child: new Text("/"),
                            color: Colors.white,
                            onPressed: doDiv,
                          ),
                        ],
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                      ),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new MaterialButton(
                            child: new Text("Clear"),
                            color: Colors.white,
                            onPressed: doClear,
                          ),
                          new MaterialButton(
                            child: new Text("Result"),
                            color: Colors.white,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ListScreen()),
                              );
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return alert;
                                },
                              );
                            },
                          ),

                        ],
                      )
                    ],*/
              SizedBox(height: 50),
              buildFirst(),
              SizedBox(height: 50),
              buildSecond(),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 50),
                  buildAdd(),
                  SizedBox(width: 50),
                  buildSub(),
                  SizedBox(width: 50),
                  buildClear(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 50),
                  buildMult(),
                  SizedBox(width: 50),
                  buildDiv(),
                  SizedBox(width: 40),
                  buildShowRes(),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
