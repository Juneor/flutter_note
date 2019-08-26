import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
/**
 * Copyright (C), 2015-2019, suntront
 * FileName: ThreePage
 * Author: Jeek
 * Date: 2019/8/23 15:41
 * Description:
 */

class BlogPage extends StatefulWidget {
  @override
  _ThreePageState createState() => _ThreePageState();
}

class _ThreePageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: WebView(initialUrl: "https://www.jianshu.com/u/cf68df6e2121",),
    );
  }
}
