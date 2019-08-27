import 'package:flutter/material.dart';
/**
 * Copyright (C), 2015-2019, suntront
 * FileName: TwoPage
 * Author: Jeek
 * Date: 2019/8/23 15:40
 * Description:
 */

class WidgetPage extends StatefulWidget {
  @override
  _WidgetPageState createState() => _WidgetPageState();
}

class _WidgetPageState extends State<WidgetPage> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Widget"),);
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
