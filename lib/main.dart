import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Worktimes'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(15.0),
              child: RaisedButton(
                child: Text('Start!'),
                onPressed: () {},
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/clock.png'),
                  Container(
                      margin: EdgeInsets.all(15), child: Text('Ready to work?'))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
