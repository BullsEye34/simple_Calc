import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: app(),
  ));
}

class app extends StatefulWidget {
  @override
  _appState createState() => _appState();
}

class _appState extends State<app> {
  double ans = 0.0;

  TextEditingController num1 = new TextEditingController();
  TextEditingController num2 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    //bool isthere;
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: //Colors.transparent,
            Colors.grey,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarDividerColor: Colors.black,
        systemNavigationBarColor: Colors.white));
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Calculator"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 70.0,
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20.0),
                    width: w / 2,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: num1,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                        labelText: 'Number 1',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    width: w / 2,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: num2,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                        labelText: 'Number 2',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    buttonMinWidth: 20,
                    children: <Widget>[
                      FlatButton(
                        padding: EdgeInsets.all(10.0),
                        color: Colors.blue,
                        onPressed: () {
                          add();
                        },
                        child: Text(
                          "ADD",
                          style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                      FlatButton(
                        padding: EdgeInsets.all(10.0),
                        color: Colors.blue,
                        onPressed: () {
                          sub();
                        },
                        child: Text(
                          "SUB",
                          style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                      FlatButton(
                        padding: EdgeInsets.all(10.0),
                        color: Colors.blue,
                        onPressed: () {
                          mul();
                        },
                        child: Text(
                          "MUL",
                          style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                      FlatButton(
                        padding: EdgeInsets.all(10.0),
                        color: Colors.blue,
                        onPressed: () {
                          div();
                        },
                        child: Text(
                          "DIV",
                          style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 100.0,
              ),
              Center(
                child: Text(
                  ans
                      .toString()
                      .toUpperCase(), //isthere ? "Type Something".toUpperCase() :
                  style: TextStyle(fontSize: 50),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void add() {
    setState(() {
      ans = (double.parse(num1.text) + double.parse(num2.text));
    });
  }

  void sub() {
    setState(() {
      ans = (double.parse(num1.text) - double.parse(num2.text));
    });
  }

  void mul() {
    setState(() {
      ans = (double.parse(num1.text) * double.parse(num2.text));
    });
  }

  void div() {
    setState(() {
      ans = (double.parse(num1.text) / double.parse(num2.text));
    });
  }
}

// Wrap, Column, Row, and Stack have children.
// if a value? is present then do this else that
/*

value? something: somethingelse
*/
