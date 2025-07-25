import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'otp_verify_response.g.dart';

@JsonSerializable()
class OtpVerifyResponse {
  Data? data;

  OtpVerifyResponse({this.data});

  factory OtpVerifyResponse.fromJson(Map<String, dynamic> json) {
    return _$OtpVerifyResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OtpVerifyResponseToJson(this);
}
