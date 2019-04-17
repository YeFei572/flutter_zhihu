import 'package:flutter/material.dart';

class Hot extends StatefulWidget {
  final Widget child;

  Hot({Key key, this.child}) : super(key: key);

  _HotState createState() => _HotState();
}

class _HotState extends State<Hot> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: widget.child,
    );
  }
}