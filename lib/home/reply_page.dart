import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zhihu/global_config.dart';
import 'package:flutter_zhihu/home/question_page.dart';

class Common {
  static Widget searchInput(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            child: FlatButton.icon(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back, color: GlobalConfig.fontColor),
              label: Text(""),
            ),
            width: ScreenUtil().setWidth(60),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration.collapsed(
                hintText: "搜索逼乎内容",
                hintStyle: TextStyle(
                  color: GlobalConfig.fontColor
                ),
              ),
            ),
          ),
          Container(
            child: IconButton(
              icon: Icon(Icons.share, color: GlobalConfig.fontColor),
              onPressed: () {},
              padding: EdgeInsets.all(0.0),
              iconSize: ScreenUtil().setSp(18),
            ),
          ),
          Container(
            child: IconButton(
              icon: Icon(Icons.list, color: GlobalConfig.fontColor),
              onPressed: () {},
              padding: EdgeInsets.all(0.0),
              iconSize: ScreenUtil().setSp(18),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        color: GlobalConfig.searchBackgroundColor
      ),
      height: ScreenUtil().setWidth(36),
    );
  }
}

class ReplyPage extends StatefulWidget {
  @override
  _ReplyPageState createState() => _ReplyPageState();
}

class _ReplyPageState extends State<ReplyPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: GlobalConfig.themeData,
      home: Scaffold(
        appBar: AppBar(
          title: Common.searchInput(context),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return QuestionPage();
                    }));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}