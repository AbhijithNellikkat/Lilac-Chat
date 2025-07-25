// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_otp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendOtpModel _$SendOtpModelFromJson(Map<String, dynamic> json) => SendOtpModel(
  data: json['data'] == null
      ? null
      : Data.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SendOtpModelToJson(SendOtpModel instance) =>
    <String, dynamic>{'data': instance.data};
