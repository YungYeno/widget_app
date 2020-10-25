import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "Wrap widget",
        theme: new ThemeData(
            primarySwatch: Colors.green
        ),
        debugShowCheckedModeBanner: false,
        home: WrapWidget()
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}


class WrapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap Widget opdracht"),
      ),
      body: Wrap(
        direction: Axis.vertical,
        spacing: 8.0,
        children: <Widget>[
          Container(
            color: Colors.blue,
            width: 100,
            height: 100,
            child: Center(child: Text("Een wrap", textScaleFactor: 2.5,))
          ),
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
            child: Center(child: Text("Een wrap", textScaleFactor: 2.5,)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              );
            },
          ),
          Container(
            color: Colors.teal,
            width: 100,
            height: 100,
            child: Center(child: Text("Een wrap", textScaleFactor: 2.5,)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              );
            },
          ),
          Container(
            color: Colors.indigo,
            width: 100,
            height: 100,
            child: Center(child: Text("Een wrap", textScaleFactor: 2.5,)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              );
            },
          ),
          Container(
            color: Colors.orange,
            width: 100,
            height: 100,
            child: Center(child: Text("Een wrap", textScaleFactor: 2.5,)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              );
            },
          ),
        ],
      ),
    );
  }
}
