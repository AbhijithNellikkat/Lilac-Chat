// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_verify_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpVerifyModel _$OtpVerifyModelFromJson(Map<String, dynamic> json) =>
    OtpVerifyModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OtpVerifyModelToJson(OtpVerifyModel instance) =>
    <String, dynamic>{'data': instance.data};
