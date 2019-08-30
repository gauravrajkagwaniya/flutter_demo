import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "MY APP",
      home: new HomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.light,
        accentColor: Colors.green[300],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String mytext = "hello world";

  void _changeText() {
    setState(() {
      if (mytext.startsWith("h")) {
        mytext = "welcom bord";
      } else {
        mytext = "hello world";
      }
    });
  }

  Widget _bodywidget() {
    return new Container(
      padding: const EdgeInsets.all(50),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              mytext,
              style: new TextStyle(
                color: Colors.orange[200],
                fontSize: 40,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Center(
          child: new Text(
            "Home Page",
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ),
      body: _bodywidget(),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: _changeText,
      ),
    );
  }
}
