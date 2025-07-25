import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'otp_verify_model.g.dart';

@JsonSerializable()
class OtpVerifyModel {
  Data? data;

  OtpVerifyModel({this.data});

  factory OtpVerifyModel.fromJson(Map<String, dynamic> json) {
    return _$OtpVerifyModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OtpVerifyModelToJson(this);
}
