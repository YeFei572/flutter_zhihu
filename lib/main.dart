import 'package:flutter/material.dart';
import 'package:flutter_zhihu/index/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '知乎',
      home: new Index(),
    );
  }
}