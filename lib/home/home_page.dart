import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zhihu/global_config.dart';
import 'package:flutter_zhihu/home/ask_page.dart';
import 'package:flutter_zhihu/home/follow.dart';
import 'package:flutter_zhihu/home/hot.dart';
import 'package:flutter_zhihu/home/recommend.dart';
import 'package:flutter_zhihu/home/search_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget barSearch() {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton.icon(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return SearchPage();
                    }
                  )
                );
              },
              icon: Icon(
                Icons.search,
                color: GlobalConfig.fontColor,
                size: ScreenUtil().setSp(16)
              ),
              label: Text(
                '建国打开看看',
                style: TextStyle(color: GlobalConfig.fontColor),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: BorderDirectional(
                start: BorderSide(color: GlobalConfig.fontColor,
                  width: ScreenUtil().setWidth(1)),
              )
            ),
            height: ScreenUtil().setWidth(10),
            width: ScreenUtil().setWidth(1),
          ),
          Container(
            child: FlatButton.icon(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder:(context) {
                      return new AskPage();
                    }
                  )
                );
              },
              icon: Icon(
                Icons.border_color,
                color: GlobalConfig.fontColor,
                size: ScreenUtil().setSp(14)
              ),
              label: Text(
                '提问',
                style: TextStyle(color: GlobalConfig.fontColor)
              ),
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(ScreenUtil().setWidth(4)),
        color: GlobalConfig.searchBackgroundColor
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: barSearch(),
          bottom: TabBar(
            labelColor: GlobalConfig.dark == true ? new Color(0xFF63FDD9) : Colors.blue,
            unselectedLabelColor: GlobalConfig.dark == true ? Colors.white :Colors.black,
            tabs: <Widget>[
              Tab(text: '关注',),
              Tab(text: '推荐',),
              Tab(text: '热榜',),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Follow(),
            Recommend(),
            Hot()
          ],
        ),
      ),
    );
  }
}

