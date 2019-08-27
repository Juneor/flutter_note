import 'package:flutter/material.dart';
/**
 * Copyright (C), 2015-2019, suntront
 * FileName: OnePage
 * Author: Jeek
 * Date: 2019/8/23 15:39
 * Description:
 */

class ResPage extends StatefulWidget {
  @override
  _ResPageState createState() => _ResPageState();
}

class _ResPageState extends State<ResPage> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("资源"),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
