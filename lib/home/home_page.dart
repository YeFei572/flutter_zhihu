import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zhihu/global_config.dart';
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
                size: 16.0
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
                start: BorderSide(color: GlobalConfig.fontColor, width: 1.0)
              )
            ),
            height: ScreenUtil().setWidth(14),
            width: 1.0,
          ),
        ],
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
        ),
      ),
    );
  }
}

