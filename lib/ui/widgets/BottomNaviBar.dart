import 'package:flutter/material.dart';
/**
 * Copyright (C), 2015-2019, suntront
 * FileName: BottomTabBar
 * Author: Jeek
 * Date: 2019/8/23 14:33
 * Description:
 */

class BottomNaviBar extends StatelessWidget {

  BottomNaviBarCallback bottomNaviBarCallback;


//  BottomNaviBar({this.bottomNaviBarCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
       color: Color(0xFFF7F7F7),
        border: Border(top: BorderSide(color: Color(0xFFE6E6E6))),
      ),
      child: TabBar(
        labelColor: Color(0xFF54C5F8),
        unselectedLabelColor: Color(0xFFCDCDCD),
        indicatorColor: Colors.transparent,
        onTap: (int index){
          print("Tab index: " + index.toString());
          if(bottomNaviBarCallback != null){
            bottomNaviBarCallback.onTabSelect(index);
          }
        },
        tabs: <Widget>[
          Tab(
            text: "资源",
            icon: Icon(Icons.airplay),
          ),
          Tab(
            text: "组件",
            icon: Icon(Icons.widgets),
          ),
          Tab(
            text: "插件",
            icon: Icon(Icons.extension),
          ),
          Tab(
            text: "笔记",
            icon: Icon(Icons.chrome_reader_mode),
          ),
        ],
        labelStyle: TextStyle(height: 0.3),
      ),
    );
  }

}

abstract class BottomNaviBarCallback{
  void onTabSelect(int index);
}
