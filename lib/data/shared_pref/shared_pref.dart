import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lilac_chat/domain/models/auth/otp_verification_response/otp_verification_response.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static const String isLogged = 'is_loggedIn';
  static const String accessKey = 'access_key';
  static const String userNameKey = 'username_Key';
  static const String userIdKey = 'userid_Key';

  static SharedPreferences? _pref;

  static Future<SharedPreferences> _getPrefs() async {
    if (_pref != null) return _pref!;
    _pref = await SharedPreferences.getInstance();
    return _pref!;
  }

  static Future<void> saveUser({
    required OtpVerificationResponse tokenModel,
    bool? saveLogin,
  }) async {
    log('✅ Save token =>() ${tokenModel.authStatus?.accessToken ?? ''}');
    final preferences = await _getPrefs();
    await setLogin();
    await preferences.setString(
      accessKey,
      tokenModel.authStatus?.accessToken ?? '',
    );
    await preferences.setString(userNameKey, tokenModel.name ?? '');
    await preferences.setString(userIdKey, tokenModel.id ?? '');
  }

  static Future<String> getToken() async {
    log('get token =>()');
    final preferences = await _getPrefs();
    final accessToken = preferences.getString(accessKey);
    debugPrint('✅ accessToken => $accessToken');
    return accessToken ?? '';
  }

  static Future<void> setLogin() async {
    log('set login =>()');
    final preferences = await _getPrefs();
    await preferences.setBool(isLogged, true);
  }

  static Future<String?> getUserName() async {
    final preferences = await _getPrefs();
    return preferences.getString(userNameKey);
  }

  static Future<String?> getUserId() async {
    final preferences = await _getPrefs();
    return preferences.getString(userIdKey);
  }
}
