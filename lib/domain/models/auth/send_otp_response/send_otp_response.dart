import 'package:json_annotation/json_annotation.dart';

part 'send_otp_response.g.dart';

@JsonSerializable()
class SendOtpResponse {
  int? data;
  bool? status;
  String? message;
  @JsonKey(name: '@TODO')
  String? todo;

  SendOtpResponse({this.data, this.status, this.message, this.todo});

  factory SendOtpResponse.fromJson(Map<String, dynamic> json) {
    return _$SendOtpResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SendOtpResponseToJson(this);
}
