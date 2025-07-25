import 'dart:developer';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:lilac_chat/domain/models/auth/otp_verify_model/device_meta.dart';

class DeviceMetaService {
  static Future<DeviceMeta> getMobileDeviceMeta() async {
    String deviceName = 'Unknown Device';
    String deviceOsVersion = 'Unknown OS';
    String appVersion = '1.0.0';
    String buildNumber = '1';

    // Get device information using device_info_plus
    try {
      final deviceInfo = DeviceInfoPlugin();

      if (Platform.isAndroid) {
        final androidInfo = await deviceInfo.androidInfo;
        deviceName = '${androidInfo.manufacturer} ${androidInfo.model}';
        deviceOsVersion = 'Android ${androidInfo.version.release}';
      } else if (Platform.isIOS) {
        final iosInfo = await deviceInfo.iosInfo;
        deviceName = '${iosInfo.name} ${iosInfo.model}';
        deviceOsVersion = 'iOS ${iosInfo.systemVersion}';
      }
    } catch (e) {
      log('Error getting device info: $e');

      deviceName = Platform.isAndroid ? 'Android Device' : 'iOS Device';
      deviceOsVersion = Platform.isAndroid ? 'Android' : 'iOS';
    }

    return DeviceMeta(
      type: 'mobile',
      deviceName: deviceName,
      deviceOsVersion: deviceOsVersion,
      browser: 'N/A',
      browserVersion: 'N/A',
      userAgent: 'MobileApp/$appVersion+$buildNumber',
      screenResolution: 'N/A',
      language: Platform.localeName,
    );
  }
}
