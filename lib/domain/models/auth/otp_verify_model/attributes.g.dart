// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attributes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Attributes _$AttributesFromJson(Map<String, dynamic> json) => Attributes(
  phone: json['phone'] as String?,
  otp: (json['otp'] as num?)?.toInt(),
  deviceMeta: json['device_meta'] == null
      ? null
      : DeviceMeta.fromJson(json['device_meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AttributesToJson(Attributes instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'otp': instance.otp,
      'device_meta': instance.deviceMeta,
    };
