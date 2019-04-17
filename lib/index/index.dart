import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zhihu/global_config.dart';
import 'package:flutter_zhihu/home/home_page.dart';
import 'package:flutter_zhihu/idea/idea_page.dart';
import 'package:flutter_zhihu/index/navigation_icon_view.dart';
import 'package:flutter_zhihu/market/market_page.dart';
import 'package:flutter_zhihu/my/my_page.dart';
import 'package:flutter_zhihu/notice/notice_page.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> with TickerProviderStateMixin {
  int _currentIndex = 0;

  List<NavigationIconView> _navigationViews;
  List<StatefulWidget> _pageList;
  StatefulWidget _currentPage;

  @override
  void initState() { 
    super.initState();
    _navigationViews = <NavigationIconView> [
      NavigationIconView(
        icon: Icon(Icons.assessment),
        title: Text('首页'),
        vsync: this,
      ),
       new NavigationIconView(
        icon: new Icon(Icons.all_inclusive),
        title: new Text("想法"),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.add_shopping_cart),
        title: new Text("市场"),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.add_alert),
        title: new Text("通知"),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.perm_identity),
        title: new Text("我的"),
        vsync: this,
      ),
    ];
    for (NavigationIconView view in _navigationViews) {
      view.controller.addListener(_rebuild);
    }

    _pageList = <StatefulWidget> [
      new HomePage(),
      new IdeaPage(),
      new MarketPage(),
      new NoticePage(),
      new MyPage()
    ];
    _currentPage = _pageList[_currentIndex];
  }

  void _rebuild() {
    setState(() {
    });
  }

  @override
  void dispose() {
    super.dispose();
    for(NavigationIconView view in _navigationViews){
      view.controller.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {

    // 初始化页面 width=750; height=1334;
    ScreenUtil.instance = ScreenUtil(width: 375, height: 812)..init(context);
    final BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
      items: _navigationViews
        .map((NavigationIconView navigationIconView) => navigationIconView.item).toList(),
      currentIndex: _currentIndex,
      fixedColor: Colors.blue,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _navigationViews[_currentIndex].controller.reverse();
          _currentIndex = index;
          _navigationViews[_currentIndex].controller.forward();
          _currentPage = _pageList[_currentIndex];
        });
      },
    );
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        body: new Center(
          child: _currentPage,
        ),
        bottomNavigationBar: bottomNavigationBar,
      ),
      
      theme: GlobalConfig.themeData,
    );
  }
}