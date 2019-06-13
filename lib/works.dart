import 'package:flutter/material.dart';

class Works extends StatelessWidget {
  final List<String> works;

  Works([this.works = const []]) {
    print('[Works Widget] constructor');
  }

  @override
  Widget build(BuildContext context) {
    print('[Works Widget] build()');
    return Column(
        children: works
            .map((p) => Card(
                  child: Column(
                    children: <Widget>[Image.asset('assets/work.png'), Text(p)],
                  ),
                ))
            .toList());
  }
}
