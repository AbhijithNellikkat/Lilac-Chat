// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthStatus _$AuthStatusFromJson(Map<String, dynamic> json) => AuthStatus(
  accessToken: json['access_token'] as String?,
  tokenType: json['token_type'] as String?,
  is2faConfiguredByUser: json['is_2fa_configured_by_user'] as bool?,
  is2faVerifiedByUser: json['is_2fa_verified_by_user'] as bool?,
  isEmailVerificationRequired: json['is_email_verification_required'] as bool?,
);

Map<String, dynamic> _$AuthStatusToJson(AuthStatus instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'is_2fa_configured_by_user': instance.is2faConfiguredByUser,
      'is_2fa_verified_by_user': instance.is2faVerifiedByUser,
      'is_email_verification_required': instance.isEmailVerificationRequired,
    };
