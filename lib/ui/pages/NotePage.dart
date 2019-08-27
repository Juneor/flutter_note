import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
/**
 * Copyright (C), 2015-2019, suntront
 * FileName: ThreePage
 * Author: Jeek
 * Date: 2019/8/23 15:41
 * Description:
 */

class NotePage extends StatefulWidget {
  @override
  _NotePageState createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: WebView(initialUrl: "https://www.jianshu.com/u/cf68df6e2121",),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
