import 'package:flutter/material.dart';

import './works.dart';
import './work_control.dart';

class WorkManager extends StatefulWidget {
  final String startingWork;
  WorkManager({this.startingWork = 'Fun fun fun'}) {
    print('[WorkManager Widget] contructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[WorkManager Widget] createState()');
    return _WorkManagerState();
  }
}

class _WorkManagerState extends State<WorkManager> {
  List<String> _works = [];

  @override
  void initState() {
    print('[WorkManager State] initState()');
    _works.add(widget.startingWork);
    super.initState();
  }

  @override
  void didUpdateWidget(WorkManager oldWidget) {
    print('[WorkManager State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  void _addWork(String name) {
    setState(() {
      _works.add(name);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('[WorkManager State] build()');
    return Column(children: [
      Container(margin: EdgeInsets.all(10), child: WorkControl(this._addWork)),
      Works(_works)
    ]);
  }
}
