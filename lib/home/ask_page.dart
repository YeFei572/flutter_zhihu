import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zhihu/global_config.dart';

class AskPage extends StatefulWidget {

  _AskPageState createState() => _AskPageState();
}

class _AskPageState extends State<AskPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: GlobalConfig.themeData,
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            child: Row(
              children: <Widget>[
                FlatButton.icon(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.clear, color: Colors.white70),
                  label: Text(""),
                ),
                Expanded(
                  child: Container(
                    child: Text('提问'),
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text('下一步', style:TextStyle(color: Colors.white12)),
                )
              ],
            ),
          ),
        ),
        body: new SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "请输入标题",
                    hintStyle: TextStyle(color: Colors.white70)
                  ),
                ),
                margin: EdgeInsets.all(ScreenUtil().setWidth(16)),
              )
            ],
          ),
        ),
      ),
    );
  }
}