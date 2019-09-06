import 'package:dio/dio.dart';

/**
 * Copyright (C), 2015-2019, suntront
 * FileName: HttpLite
 * Author: Jeek
 * Date: 2019/9/6 13:54
 * Description: Http请求简化工具类
 */
class HttpLite{

  // 服务器接口地址公有部分
  final _httpBaseUrl = "https://www.xxx...";

  // 请求超时时长
  final _httpConnectTimeout = 10000;

  // 接收超时时长
  final _hpptReceiveTimeout = 10000;

  // 本类实例
  static HttpLite _dioHttpUtilsObject;

  // 请求实例
  static Dio _dioObject;

  // 参数实例
  static BaseOptions _baseOptionsObject;

  /// 单例访问
  static HttpLite getInstance(){
    if(null == _dioHttpUtilsObject){
      _dioHttpUtilsObject = new HttpLite._();
    }
    return _dioHttpUtilsObject;
  }

  /// 私有化构造（单例模式）
  HttpLite._(){

    // 初始化 http 基本设置
    _baseOptionsObject =new BaseOptions(
        baseUrl: _httpBaseUrl,
        connectTimeout: _httpConnectTimeout,
        receiveTimeout: _hpptReceiveTimeout,
        headers: {}
    );

    // 定义请求实例
    _dioObject = new Dio(_baseOptionsObject);

    // 添加请求事件监听
    _dioObject.interceptors.add(InterceptorsWrapper(

      // 拦截请求发送事件（如添加 token、versionCode、platformType 等）
        onRequest: (RequestOptions options){
          // do something
          return options;
        },

        // 拦截请求响应事件（如数据重组，便于业务代码中快速处理调用）
        onResponse: (Response response){
          // do something
          return response;
        },

        // 拦截请求失败事件（如添加统一的错误提示 或 统一的错误处理逻辑等）
        onError: (DioError error){
          return error;
        }

    ));
  }

  /// get 请求
  get(url,{ options, cancelToken, parameters=null}) async {
    Response response;
    try{
      response = await _dioObject.get(url, queryParameters:parameters, cancelToken:cancelToken);
    }on DioError catch(e){
      if(CancelToken.isCancel(e)){
        print('请求取消：' + e.message);
      }else{
        print('请求错误：$e');
      }
    }
    return response.data;
  }

  /// post请求
  post(url,{ options, cancelToken, parameters=null}) async {
    Response response;
    try{
      response = await _dioObject.post(url, queryParameters:parameters !=null ? parameters : {}, cancelToken:cancelToken);
      print(response);
    }on DioError catch(e){
      if(CancelToken.isCancel(e)){
        print('请求取消：' + e.message);
      }else{
        print('请求错误：$e');
      }
    }
    return response.data;
  }

}
