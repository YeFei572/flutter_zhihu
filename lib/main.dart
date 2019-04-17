import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zhihu/index/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 初始化页面 width=750; height=1334;
    ScreenUtil.instance = ScreenUtil(width: 375, height: 812)..init(context);
    return MaterialApp(
      title: '知乎',
      home: new Index(),
    );
  }
}