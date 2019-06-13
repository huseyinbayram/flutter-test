import 'package:flutter/material.dart';

class WorkControl extends StatelessWidget {
  final Function _addWork;

  WorkControl(this._addWork);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      child: Text('Add Work'),
      onPressed: () {
        this._addWork('Value Tester');
      },
    );
  }
}
