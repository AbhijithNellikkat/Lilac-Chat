// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDetails _$UserDetailsFromJson(Map<String, dynamic> json) => UserDetails(
  type: json['type'] as String?,
  id: json['id'] as String?,
  messageReceivedFromPartnerAt:
      json['message_received_from_partner_at'] as String?,
  authUserId: (json['auth_user_id'] as num?)?.toInt(),
  name: json['name'] as String?,
  username: json['username'] as String?,
  email: json['email'] as String?,
  phone: json['phone'] as String?,
  gender: json['gender'] as String?,
  isActive: json['is_active'] as bool?,
  customerCode: json['customer_code'] as String?,
  isPremiumCustomer: json['is_premium_customer'] as bool?,
  isOnline: json['is_online'] as bool?,
  lastActiveAt: json['last_active_at'] == null
      ? null
      : DateTime.parse(json['last_active_at'] as String),
  dateOfBirth: json['date_of_birth'] as String?,
  referralCode: json['referral_code'] as String?,
  isVanishModeEnabled: json['is_vanish_mode_enabled'] as bool?,
  isChatInitiated: json['is_chat_initiated'] as bool?,
  likebackCreatedAt: json['likeback_created_at'] == null
      ? null
      : DateTime.parse(json['likeback_created_at'] as String),
  profilePhotoUrl: json['profile_photo_url'] as String?,
  square100ProfilePhotoUrl: json['square100_profile_photo_url'] as String?,
  square300ProfilePhotoUrl: json['square300_profile_photo_url'] as String?,
  square500ProfilePhotoUrl: json['square500_profile_photo_url'] as String?,
  age: (json['age'] as num?)?.toInt(),
  userSettings: json['userSettings'] == null
      ? null
      : UserSettings.fromJson(json['userSettings'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UserDetailsToJson(UserDetails instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'message_received_from_partner_at': instance.messageReceivedFromPartnerAt,
      'auth_user_id': instance.authUserId,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'phone': instance.phone,
      'gender': instance.gender,
      'is_active': instance.isActive,
      'customer_code': instance.customerCode,
      'is_premium_customer': instance.isPremiumCustomer,
      'is_online': instance.isOnline,
      'last_active_at': instance.lastActiveAt?.toIso8601String(),
      'date_of_birth': instance.dateOfBirth,
      'referral_code': instance.referralCode,
      'is_vanish_mode_enabled': instance.isVanishModeEnabled,
      'is_chat_initiated': instance.isChatInitiated,
      'likeback_created_at': instance.likebackCreatedAt?.toIso8601String(),
      'profile_photo_url': instance.profilePhotoUrl,
      'square100_profile_photo_url': instance.square100ProfilePhotoUrl,
      'square300_profile_photo_url': instance.square300ProfilePhotoUrl,
      'square500_profile_photo_url': instance.square500ProfilePhotoUrl,
      'age': instance.age,
      'userSettings': instance.userSettings,
    };
