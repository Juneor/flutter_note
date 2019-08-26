import 'package:flutter/material.dart';
/**
 * Copyright (C), 2015-2019, suntront
 * FileName: PlayerPage
 * Author: Jeek
 * Date: 2019/8/23 16:29
 * Description:
 */

class PlayerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PlayerState();
  }
}

class _PlayerState extends State<PlayerPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context)),
        iconTheme: IconThemeData(color: Colors.black87),
        title: Text(
          "演员表",
          style: TextStyle(
            color: Colors.black87,
            fontFamily: '方正行楷简体',
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: null,
    );
  }
}
