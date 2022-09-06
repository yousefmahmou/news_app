import 'package:shared_preferences/shared_preferences.dart';

class Cachehelper {
  static late SharedPreferences sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> putBoolean({
    required String Key,
    required bool value,
  }) async {
    return await sharedPreferences.setBool(Key, value);
  }

  static bool? getBoolean({
    required String key,
  }) {
    return sharedPreferences.getBool(key);
  }
}
