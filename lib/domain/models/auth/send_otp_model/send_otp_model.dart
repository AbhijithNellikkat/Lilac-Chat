import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'send_otp_model.g.dart';

@JsonSerializable()
class SendOtpModel {
  Data? data;

  SendOtpModel({this.data});

  factory SendOtpModel.fromJson(Map<String, dynamic> json) {
    return _$SendOtpModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SendOtpModelToJson(this);
}
