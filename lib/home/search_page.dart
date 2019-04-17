import 'package:flutter/material.dart';
import 'package:flutter_zhihu/global_config.dart';

class SearchPage extends StatefulWidget {

  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  Widget searchInput() {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            child: FlatButton.icon(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back, color: GlobalConfig.fontColor),
              label: Text(''),
            ),
          ),
          Expanded(
            child: TextField(
              autofocus: true,
              decoration: InputDecoration.collapsed(
                hintText: '搜索逼乎内容',
                hintStyle: TextStyle(
                  color: GlobalConfig.fontColor
                )
              ),
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: GlobalConfig.searchBackgroundColor
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: GlobalConfig.themeData,
      home: Scaffold(
        appBar: AppBar(
          title: searchInput(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              
            ],
          ),
        ),
      ),
    );
  }
}