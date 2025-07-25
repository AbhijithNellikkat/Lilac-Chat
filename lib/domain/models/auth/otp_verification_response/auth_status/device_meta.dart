import 'package:json_annotation/json_annotation.dart';

part 'device_meta.g.dart';

@JsonSerializable()
class DeviceMeta {
  String? type;
  @JsonKey(name: 'device-name')
  String? deviceName;
  @JsonKey(name: 'device-os-version')
  String? deviceOsVersion;
  String? browser;
  @JsonKey(name: 'browser_version')
  String? browserVersion;
  @JsonKey(name: 'user-agent')
  String? userAgent;
  @JsonKey(name: 'screen_resolution')
  String? screenResolution;
  String? language;

  DeviceMeta({
    this.type,
    this.deviceName,
    this.deviceOsVersion,
    this.browser,
    this.browserVersion,
    this.userAgent,
    this.screenResolution,
    this.language,
  });

  factory DeviceMeta.fromJson(Map<String, dynamic> json) {
    return _$DeviceMetaFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DeviceMetaToJson(this);
}
