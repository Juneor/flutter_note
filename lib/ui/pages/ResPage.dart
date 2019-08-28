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
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562723625662&di=bc7be59dd27706ea65ea33a94c209477&imgtype=0&src=http%3A%2F%2Fpic.58pic.com%2F58pic%2F12%2F40%2F43%2F18958PICYpQ.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562723734494&di=864f7b85f900f0b68e8bc08f1c078eed&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201511%2F02%2F20151102140204_WUSwE.jpeg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562723821634&di=e04d14690229411a560ccc6cf0e10f6a&imgtype=0&src=http%3A%2F%2Fpic.58pic.com%2F58pic%2F15%2F01%2F96%2F56N58PICVWw_1024.jpg"
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
                          new CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          new Icon(Icons.error),
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
