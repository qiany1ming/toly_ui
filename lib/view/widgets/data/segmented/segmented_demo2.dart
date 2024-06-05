import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tolyui/tolyui.dart';

class SegmentedDemo2 extends StatefulWidget {
  const SegmentedDemo2({Key? key}) : super(key: key);

  @override
  _SegmentedDemo2State createState() =>
      _SegmentedDemo2State();
}

class _SegmentedDemo2State
    extends State<SegmentedDemo2> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return CupertinoSlidingSegmentedControl(
      groupValue: _value,
      onValueChanged: _onValueChanged,
      thumbColor: Color(0xffffd100),

      backgroundColor: Color(0xfff5f7fa),
      padding: const EdgeInsets.all(5),
      children: const {
        1: Text("Delicacy"),
        2: Text("Desserts"),
        4: Text("Fresh foods"),
        5: Text("Supermarket"),
      },
    );
  }

  void _onValueChanged(int? value) {
    if(value==null) return;
    setState(() {
      _value=value;
    });
  }
}

