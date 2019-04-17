import 'package:flutter/material.dart';

class Follow extends StatefulWidget {
  final Widget child;

  Follow({Key key, this.child}) : super(key: key);

  _FollowState createState() => _FollowState();
}

class _FollowState extends State<Follow> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: widget.child,
    );
  }
}