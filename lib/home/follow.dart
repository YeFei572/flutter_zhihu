import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zhihu/global_config.dart';
import 'package:flutter_zhihu/home/article.dart';
import 'package:flutter_zhihu/home/reply_page.dart';

class Follow extends StatefulWidget {
  final Widget child;

  Follow({Key key, this.child}) : super(key: key);

  _FollowState createState() => _FollowState();
}

class _FollowState extends State<Follow> {
  Widget wordsCard(Article article) {
    Widget markWidget;
    if (article.imgUrl == null) {
      markWidget = Text(
        article.mark,
        style: TextStyle(
          height: ScreenUtil().setWidth(2),
          color: GlobalConfig.fontColor
        ),
      );
    } else {
      markWidget = new Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              child: Text(
                article.mark,
                style: TextStyle(
                  height: ScreenUtil().setWidth(2),
                  color: GlobalConfig.fontColor
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: AspectRatio(
              aspectRatio: 3.0/2.0,
              child: Container(
                foregroundDecoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(article.imgUrl),
                    centerSlice: Rect.fromLTRB(270, 180, 1360, 730),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(6.0))
                ),
              ),
            ),
          )
        ],
      );
    }
    return Container(
      color: GlobalConfig.cardBackgroundColor,
      margin: EdgeInsets.only(top: ScreenUtil().setWidth(5), bottom: 5),
      child: FlatButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return ReplyPage();
            })
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
       child: widget.child,
    );
  }
}