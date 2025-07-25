import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static const String isLogged = 'is_loggedIn';

  static SharedPreferences? _pref;

  static Future<SharedPreferences> _getPrefs() async {
    if (_pref != null) return _pref!;
    _pref = await SharedPreferences.getInstance();
    return _pref!;
  }
}
