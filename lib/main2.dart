import 'package:flutter/material.dart';

List<Color> colors = [
  Colors.red,
  Colors.yellow,
  Colors.green,
  Colors.purple,
  Colors.blue,
  Colors.orange,
];
List<String> nama = [
  'caca',
  'cici',
  'sudah',
  'cape',
  'cape',
  'lari',
  'pagi',
];
List<String> nama1 = [
  'perut',
  'lapar',
  'perut',
  'lapar',
  'apa',
  'kering',
  'baju',
  'sendiri',
  'hadeuh',
  'hahaha',
  'tawa luuu',
  'canda',
];
List<Color> warna = [
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.red,
  Colors.blueAccent,
  Colors.brown,
  Colors.pink,
  Colors.blue,
  Colors.grey,
  Colors.red,
  Colors.lime,
  Colors.brown,
];

class Haldua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 200,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: colors.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: new EdgeInsets.all(6),
                            width: 150,
                            height: 80,
                            color: colors[index],
                            child: Center(
                              child: Text(nama[index]),
                            ),
                          );
                        }),
                  ),
                  Padding(padding: const EdgeInsets.all(10)),
                  Container(
                    height: 200,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: colors.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: new EdgeInsets.all(6),
                            width: 150,
                            height: 80,
                            color: colors[index],
                            child: Center(
                              child: Text(nama[index]),
                            ),
                          );
                        }),
                  ),
                  Padding(padding: const EdgeInsets.all(10)),
                  Container(
                    height: 80,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: colors.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: new EdgeInsets.all(6),
                            width: 70,
                            height: 80,
                            color: colors[index],
                            child: Center(
                              child: Text(nama[index]),
                            ),
                          );
                        }),
                  ),
                  Container(
                    height: 80,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: warna.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: new EdgeInsets.all(6),
                            width: 70,
                            height: 80,
                            color: warna[index],
                            child: Center(
                              child: Text(nama1[index]),
                            ),
                          );
                        }),
                  ),
                  RaisedButton(
                    padding: EdgeInsets.all(10),
                    color: Colors.amber,
                    onPressed: () {
                      Navigator.pushNamed(context, '/main3');
                    },
                    child: Text(
                      'Next Page',
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
