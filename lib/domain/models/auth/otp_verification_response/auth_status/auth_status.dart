import 'package:json_annotation/json_annotation.dart';

import 'device_meta.dart';

part 'auth_status.g.dart';

@JsonSerializable()
class AuthStatus {
  @JsonKey(name: 'access_token')
  String? accessToken;
  @JsonKey(name: 'token_type')
  String? tokenType;
  @JsonKey(name: 'is_2fa_configured_by_user')
  bool? is2faConfiguredByUser;
  @JsonKey(name: 'is_2fa_verified_by_user')
  bool? is2faVerifiedByUser;
  @JsonKey(name: 'is_email_verification_required')
  bool? isEmailVerificationRequired;
  @JsonKey(name: 'device_meta')
  DeviceMeta? deviceMeta;

  AuthStatus({
    this.accessToken,
    this.tokenType,
    this.is2faConfiguredByUser,
    this.is2faVerifiedByUser,
    this.isEmailVerificationRequired,
    this.deviceMeta,
  });

  factory AuthStatus.fromJson(Map<String, dynamic> json) {
    return _$AuthStatusFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AuthStatusToJson(this);
}
