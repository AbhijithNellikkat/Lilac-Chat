// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceMeta _$DeviceMetaFromJson(Map<String, dynamic> json) => DeviceMeta(
  type: json['type'] as String?,
  deviceName: json['device-name'] as String?,
  deviceOsVersion: json['device-os-version'] as String?,
  browser: json['browser'] as String?,
  browserVersion: json['browser_version'] as String?,
  userAgent: json['user-agent'] as String?,
  screenResolution: json['screen_resolution'] as String?,
  language: json['language'] as String?,
);

Map<String, dynamic> _$DeviceMetaToJson(DeviceMeta instance) =>
    <String, dynamic>{
      'type': instance.type,
      'device-name': instance.deviceName,
      'device-os-version': instance.deviceOsVersion,
      'browser': instance.browser,
      'browser_version': instance.browserVersion,
      'user-agent': instance.userAgent,
      'screen_resolution': instance.screenResolution,
      'language': instance.language,
    };
