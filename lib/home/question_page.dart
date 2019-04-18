import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zhihu/global_config.dart';
import 'package:flutter_zhihu/home/reply_page.dart';

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {

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
                child: Row(
                  children: <Widget>[
                    Container(
                      child: FlatButton(
                        onPressed: () {},
                        child: Text('物理学'),
                        color: GlobalConfig.searchBackgroundColor,
                      ),
                      height: ScreenUtil().setWidth(30),
                      margin: EdgeInsets.only(right: ScreenUtil().setWidth(8)),
                    ),
                    Container(
                      child: new FlatButton(onPressed: (){}, child: new Text("三体(书籍)"), color: GlobalConfig.searchBackgroundColor),
                      height: 30.0,
                        margin: const EdgeInsets.only(right: 8.0)
                    ),
                    Container(
                      child: new FlatButton(onPressed: (){}, child: new Text("脑洞(网络用语)"), color: GlobalConfig.searchBackgroundColor),
                      height: 30.0,
                    )
                  ],
                ),
                padding: EdgeInsets.only(
                  left: ScreenUtil().setWidth(16),
                  bottom: ScreenUtil().setWidth(8),
                  top: ScreenUtil().setWidth(8),
                  right: ScreenUtil().setWidth(16)
                ),
                color: GlobalConfig.cardBackgroundColor,
              ),
              Container(
                child: Text(
                  '《三体》里的水滴有可能被制造出来吗?',
                  style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, height: 1.3, color: GlobalConfig.dark == true ? Colors.white70 : Colors.black)),
                padding: new EdgeInsets.only(left: 16.0, bottom: 8.0, right: 16.0),
                alignment: Alignment.topLeft,
                color: GlobalConfig.cardBackgroundColor
              ),
              Container(
                child: Text(
                  '如果，仅考虑其延长强相互作用力的特性，而不考虑其直角转弯的特性，那么水滴能被制造出来吗？换句话说，强相互作用力能够以影响微观物理量的方式延长吗？',
                  style: new TextStyle(height: 1.4, fontSize: 16.0, color: GlobalConfig.fontColor), textAlign: TextAlign.start
                ),
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
                decoration: new BoxDecoration(
                  border: new BorderDirectional(bottom: new BorderSide(color: GlobalConfig.dark == true ?  Colors.white12 : Colors.black12)),
                  color: GlobalConfig.cardBackgroundColor
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}