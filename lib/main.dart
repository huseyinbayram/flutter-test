import 'package:flutter/material.dart';

import './work_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          brightness: Brightness.light,
          accentColor: Colors.deepPurple),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Huseyin List'),
          ),
          body: WorkManager(startingWork: 'Developer')),
    );
  }
}
