import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_note/ui/pages/PlayerPage.dart';
/**
 * Copyright (C), 2015-2019, suntront
 * FileName: DrawerLayout
 * Author: Jeek
 * Date: 2019/8/23 14:36
 * Description:
 */

class DrawerLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          padding: EdgeInsets.all(0),
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("\${user.name}"),
              accountEmail: Text("\${user.email}"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: CachedNetworkImageProvider(
                    "http://gionchat.com/static/upload/2019/06/26/719b4cabe5f85ac3ee146ce849f45591.jpg"),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: CachedNetworkImageProvider(
                    "http://gionchat.com/static/upload/2019/06/26/719b4cabe5f85ac3ee146ce849f45591.jpg"),
              )),
            ),
            InkWell(
                child: ListTile(
              title: Text("用户反馈"),
              leading: Icon(Icons.feedback,color: Color(0xFF3FEECA),),
              onTap: () {
                print("用户反馈");
              },
                  dense: true,
            )),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text("系统设置"),
              leading: Icon(Icons.settings,color: Color(0xFF0AA848),),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text("我要发布"),
              leading: Icon(Icons.send,color: Color(0xFF54C5F8),),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text("Android iOS图标制作"),
              leading: Icon(Icons.android,color: Color(0xFF3DDB84),),
            ),
            Divider(
              height: 0.1,
            ),

            ListTile(
              title: Text("Android iOS启动图制作"),
              leading: Icon(Icons.phone_iphone,color: Color(0xFFF5D414),),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text("注销"),
              leading: Icon(Icons.exit_to_app,color: Color(0xFFEE0000),),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text("演员表"),
              leading: Icon(Icons.local_movies,color: Color(0xFF303030),),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context){

                return PlayerPage();
              })),
            ),
           
          ],
        ),
      ),
    );
  }
}
