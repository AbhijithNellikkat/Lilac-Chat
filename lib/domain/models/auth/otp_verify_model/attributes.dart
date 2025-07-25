import 'package:json_annotation/json_annotation.dart';

import 'device_meta.dart';

part 'attributes.g.dart';

@JsonSerializable()
class Attributes {
  String? phone;
  int? otp;
  @JsonKey(name: 'device_meta')
  DeviceMeta? deviceMeta;

  Attributes({this.phone, this.otp, this.deviceMeta});

  factory Attributes.fromJson(Map<String, dynamic> json) {
    return _$AttributesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AttributesToJson(this);
}
