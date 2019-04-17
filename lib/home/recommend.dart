import 'package:flutter/material.dart';

class Recommend extends StatefulWidget {
  final Widget child;

  Recommend({Key key, this.child}) : super(key: key);

  _RecommendState createState() => _RecommendState();
}

class _RecommendState extends State<Recommend> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: widget.child,
    );
  }
}