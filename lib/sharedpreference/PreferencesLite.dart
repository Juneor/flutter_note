import 'package:shared_preferences/shared_preferences.dart';

/**
 * Copyright (C), 2015-2019, suntront
 * FileName: PreferencesLite
 * Author: Jeek
 * Date: 2019/9/6 13:51
 * Description: SharedPreference 使用简单封装
 */

class PreferencesLite{

  Future setUserInfo(key, value) async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString(key, value);
  }

  Future getUserInfo(key) async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    print(sp.get(key));
    return sp.get(key);
  }

  Future deleteUserInfo(key) async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.remove(key);
  }

}