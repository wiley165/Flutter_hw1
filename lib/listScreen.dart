import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  @override
  State createState() => new ListState();
}

class ListState extends State<ListScreen> {

  final TextEditingController t1 = new TextEditingController(text: "");
  final TextEditingController t2 = new TextEditingController(text: "");
  var titlu = "";
  var strings = <String>[];
  var numerics = <int>[];

  void doConcat() {
    setState(() {
      strings.clear();
      var out = "";
      titlu = "Concatenation";
      strings.add(t1.text);
      strings.add(t2.text);
      out = t1.text+t2.text;
      strings.add(out);
    });
  }
  void doSort() {
    setState(() {
      titlu = "Sorting";
      numerics.clear();
      numerics.add(int.parse(t1.text));
      numerics.add(int.parse(t2.text));
      numerics.sort();
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
            keyboardType: TextInputType.text,
            controller: t1,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.pageview_rounded,
                  color: Color(0xff1672F9),
                ),
                hintText: 'Type Something...',
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
            keyboardType: TextInputType.text,
            controller: t2,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.paste_rounded,
                  color: Color(0xff1672F9),
                ),
                hintText: 'Type Something...',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget buildConcat() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.centerLeft,
      //width: 100.0,
      child: ElevatedButton(
        child: Text(
          'Concatenate',
          style: TextStyle(
              color: Color(0xff1672F9),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          doConcat();
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

  Widget buildConcatAct() {
    Widget okButton = TextButton(
      child: Text("OK",
        style: TextStyle(
            color: Color(0xff1672F9),
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
      onPressed: () => Navigator.pop(context),
    );
    AlertDialog alert = AlertDialog(
      title: Text('Concatenation',
        style: TextStyle(
            color: Color(0xff1672F9),
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.amber,
      content: Text(strings.toString(),
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
      alignment: Alignment.centerLeft,
      //width: 100.0,
      child: ElevatedButton(
        child: Text(
          'Show Concat',
          style: TextStyle(
              color: Color(0xff1672F9),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          if(t1.text != "" && t2.text != "") {
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
          elevation: 5,
          padding: EdgeInsets.all(15),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          primary: Colors.white,
        ),
      ),
    );
  }

  Widget buildSort() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.centerLeft,
      //width: 100.0,
      child: ElevatedButton(
        child: Text(
          'Sort',
          style: TextStyle(
              color: Color(0xff1672F9),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          doSort();
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

  Widget buildSortAct() {
    Widget okButton = TextButton(
      child: Text("OK",
        style: TextStyle(
            color: Color(0xff1672F9),
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
      onPressed: () => Navigator.pop(context),
    );
    AlertDialog alert = AlertDialog(
      title: Text('Sorted List',
        style: TextStyle(
            color: Color(0xff1672F9),
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.amber,
      content: Text(numerics.toString(),
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
      alignment: Alignment.centerLeft,
      //width: 100.0,
      child: ElevatedButton(
        child: Text(
          'Show Sort',
          style: TextStyle(
              color: Color(0xff1672F9),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          if(t1.text != "" && t2.text != "") {
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
          elevation: 5,
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
          title: new Text("Listing page"),
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
                  ]
              )
          ),
          padding: const EdgeInsets.all(40.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              /*
              new TextField(
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(hintText: "Type something"),
                controller: t1,
              ),
              new TextField(
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(hintText: "Type something"),
                controller: t2,
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 20.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("Concatenate"),
                    color: Colors.white,
                    onPressed: (){
                      doConcat();
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alert;
                        },
                      );
                    },
                  ),
                  new MaterialButton(
                    child: new Text("Sort"),
                    color: Colors.white,
                    onPressed : (){
                      doSort();
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alert;
                        },
                      );
                    },
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                  ),
                ],
              ),
              */
              SizedBox(height: 50),
              buildFirst(),
              SizedBox(height: 50),
              buildSecond(),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 50),
                  buildConcat(),
                  SizedBox(width: 50),
                  buildSort(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 50),
                  buildConcatAct(),
                  SizedBox(width: 50),
                  buildSortAct(),
                ],
              ),
          ],
        ),
      ),
    );
  }
}