import 'package:flutter/material.dart';
import 'package:flutterproject/main2.dart';
import 'package:flutterproject/main3.dart';

void main() {
  runApp(new MaterialApp(
      //pertama kali di run hal1
      home: new Halsatu(),
      title: "navigasi",
      routes: <String, WidgetBuilder>{
        '/main': (BuildContext contex) => new Halsatu(),
        '/main2': (BuildContext contex) => new Haldua(),
        '/main3': (BuildContext contex) => new Haltiga(),
      }));
}

class Halsatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
      ),
      body: new Center(
          child: new IconButton(
        icon: new Icon(
          Icons.ios_share,
          size: 50.0,
          color: Colors.green,
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/main2');
        },
      )),
    );
  }
}
