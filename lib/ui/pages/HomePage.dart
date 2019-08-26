/**
 * Copyright (C), 2015-2019, suntront
 * FileName: HomePage
 * Author: Jeek
 * Date: 2019/8/20 14:04
 * Description:
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_note/ui/widgets/BottomNaviBar.dart';
import 'package:flutter_note/ui/widgets/DrawerLayout.dart';

import 'BlogPage.dart';
import 'BookPage.dart';
import 'PluginPage.dart';
import 'ProjectPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SystemUiOverlayStyle _style =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(_style);
    // TODO: implement build
    return MaterialApp(
      home: HomeStatefulWidget(),
      theme: ThemeData(
          primaryColor: Color(0xFFFFFFFF),
          accentColor: Color(0xFF54C5F8),
          scaffoldBackgroundColor: Color(0xFFF5F2EB),
          buttonColor: Colors.black87),
    );
  }
}

class HomeStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State<StatefulWidget> {
  BookPage bookPage = BookPage();
  ProjectPage projectPage = ProjectPage();
  BlogPage blogPage = BlogPage();
  PluginPage pluginPage = PluginPage();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black87),
          title: Text(
            "笔记",
            style: TextStyle(
                color: Colors.black87, fontFamily: '方正行楷简体', fontSize: 25),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () =>
                    debugPrint("===> actions IconButton onPressed()"))
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            bookPage,
            projectPage,
            blogPage,
            pluginPage,
          ],
        ),
        drawer: DrawerLayout(),
        bottomNavigationBar: BottomNaviBar(),
      ),
    );
  }
}
