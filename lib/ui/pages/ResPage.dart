import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
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

class _ResPageState extends State<ResPage> with AutomaticKeepAliveClientMixin {
  List swiperDataList = [
    "http://gionchat.com/static/upload/2019/06/26/719b4cabe5f85ac3ee146ce849f45591.jpg",
    "http://gionchat.com/static/upload/2019/08/28/cf803d56245f880b4c7e8e796a66fabe.jpg",
    "http://gionchat.com/static/upload/2019/08/28/585074a28ac99c21266de778749bbc5a.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
        children: <Widget>[
          ConstrainedBox(
              child: Swiper(
                itemWidth: double.infinity,
                autoplay: true,
                itemBuilder: (c, i) {
                  if (swiperDataList != null) {
                    return CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: "${swiperDataList[i]}",
                      placeholder: (context, url) =>
                           CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                           Icon(Icons.error),
                    );
                  }
                },
                pagination:
                    new SwiperPagination(margin: new EdgeInsets.all(5.0)),
                itemCount: swiperDataList == null ? 0 : swiperDataList.length,
              ),
              constraints: new BoxConstraints.loose(
                  new Size(MediaQuery.of(context).size.width, 180.0))),
        ],
      );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
