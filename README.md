# flutter_note

### 介绍
Flutter 常用Lib库 、常用命令

#### Lib
```bash
  //汉字转拼音库 https://github.com/flutterchina/lpinyin
  lpinyin: ^1.0.7
  // Dart 常用工具类库 https://github.com/Sky24n/common_utils
  common_utils: ^1.1.1
  // Flutter 常用工具类库 https://github.com/Sky24n/flustars
  flustars: ^0.2.5+1
  // Flutter 国际化/多语言库 https://github.com/Sky24n/fluintl
  fluintl: ^0.1.3
  // Flutter 城市列表 https://github.com/flutterchina/azlistview
  azlistview: ^0.1.2

  // https://github.com/flutterchina/dio
  dio: 1.0.13
  // rxdart https://github.com/ReactiveX/rxdart
  rxdart: ^0.22.0
  // https://github.com/renefloor/flutter_cached_network_image
  cached_network_image: ^0.8.0
  // https://github.com/flutter/plugins/tree/master/packages/url_launcher
  url_launcher: ^5.0.3
  // https://github.com/peng8350/flutter_pulltorefresh
  pull_to_refresh: 1.1.6
  // device_info
  device_info: ^0.4.0+2
  // webview_flutter
  webview_flutter: ^0.3.9+1
  // https://github.com/flutterchina/flukit.
  flukit: ^1.0.0
 ```

#### 命令
```bash
flutter doctor
flutter --version
flutter create
flutter run
flutter run --profile
flutter pub get
flutter build apk
flutter build ios
flutter build aar

```
#### 环境配置
###Web环境配置
```
$ flutter packages pub global activate webdev
路径 $HOME/.pub-cache/bin 添加到环境变量中
webdev serve
```
```
FLUTTER_STORAGE_BASE_URL https://storage.flutter-io.cn
//PUB_HOSTED_URL           https://pub.flutter-io.cn
```
#### Example

1. dio 请求 webservice接口
```dart
  void httpRequest() async {
    Dio dio = Dio();
    String params =
        "<soap12:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap12=\"http://www.w3.org/2003/05/soap-envelope\"> <soap12:Body> <Login xmlns=\"http://www.suntront.com/\"> <visitorInfo>{\"OperatorCode\":\"18530881233\",\"Password\":\"888888\"}</visitorInfo> <jsonParams>{\"password\":\"123456\",\"userId\":\"16639439562\"}</jsonParams></Login></soap12:Body></soap12:Envelope>";

    Response response = await dio.post(
        "http://1.194.232.201:8014/TempControllerAppService.asmx?op=Login",
        data: params,
        options: Options(contentType: ContentType.parse("text/xml")));

    print("Http post 返回webservice接口数据: " + response.data.toString());
  }
```