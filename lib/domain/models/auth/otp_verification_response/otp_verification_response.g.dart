// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_verification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpVerificationResponse _$OtpVerificationResponseFromJson(
  Map<String, dynamic> json,
) => OtpVerificationResponse(
  type: json['type'] as String?,
  authStatus: json['auth_status'] == null
      ? null
      : AuthStatus.fromJson(json['auth_status'] as Map<String, dynamic>),
  id: json['id'] as String?,
  name: json['name'] as String?,
  username: json['username'] as String?,
  email: json['email'] as String?,
  emailVerifiedAt: json['email_verified_at'],
  currentTeamId: json['current_team_id'],
  profilePhotoPath: json['profile_photo_path'],
  profilePhotoId: json['profile_photo_id'],
  dateOfBirth: json['date_of_birth'] as String?,
  phone: json['phone'] as String?,
  currentSubscriptionPlanId: json['current_subscription_plan_id'],
  isProfileBoostActive: (json['is_profile_boost_active'] as num?)?.toInt(),
  gender: json['gender'] as String?,
  fcmToken: json['fcm_token'] as String?,
  countryId: json['country_id'],
  countryName: json['country_name'],
  stateId: json['state_id'],
  stateName: json['state_name'],
  cityId: json['city_id'],
  cityName: json['city_name'],
  customCityName: json['custom_city_name'],
  address: json['address'],
  zip: json['zip'],
  isActive: json['is_active'] as bool?,
  coinBalance: (json['coin_balance'] as num?)?.toInt(),
  customerCode: json['customer_code'] as String?,
  referralCode: json['referral_code'] as String?,
  referredBy: json['referred_by'] as String?,
  referredId: (json['referred_id'] as num?)?.toInt(),
  referredUserName: json['referred_user_name'] as String?,
  isPremiumCustomer: json['is_premium_customer'] as bool?,
  isOnline: json['is_online'] as bool?,
  isProfilePreferencesCompleted:
      json['is_profile_preferences_completed'] as bool?,
  profileCompletionPercentage: (json['profile_completion_percentage'] as num?)
      ?.toInt(),
  isInstagramConnected: (json['is_instagram_connected'] as num?)?.toInt(),
  preferredGender: json['preferred_gender'] as String?,
  age: (json['age'] as num?)?.toInt(),
  partnerExpectations: (json['partnerExpectations'] as List<dynamic>?)
      ?.map((e) => PartnerExpectation.fromJson(e as Map<String, dynamic>))
      .toList(),
  avatars: (json['avatars'] as List<dynamic>?)
      ?.map((e) => Avatar.fromJson(e as Map<String, dynamic>))
      .toList(),
  lifeStyleActivities: json['lifeStyleActivities'] as List<dynamic>?,
  personalityTraits: json['personalityTraits'] as List<dynamic>?,
  userIdentityProof: json['userIdentityProof'] as List<dynamic>?,
);

Map<String, dynamic> _$OtpVerificationResponseToJson(
  OtpVerificationResponse instance,
) => <String, dynamic>{
  'type': instance.type,
  'id': instance.id,
  'name': instance.name,
  'username': instance.username,
  'email': instance.email,
  'email_verified_at': instance.emailVerifiedAt,
  'current_team_id': instance.currentTeamId,
  'profile_photo_path': instance.profilePhotoPath,
  'profile_photo_id': instance.profilePhotoId,
  'date_of_birth': instance.dateOfBirth,
  'phone': instance.phone,
  'current_subscription_plan_id': instance.currentSubscriptionPlanId,
  'is_profile_boost_active': instance.isProfileBoostActive,
  'gender': instance.gender,
  'fcm_token': instance.fcmToken,
  'country_id': instance.countryId,
  'country_name': instance.countryName,
  'state_id': instance.stateId,
  'state_name': instance.stateName,
  'city_id': instance.cityId,
  'city_name': instance.cityName,
  'custom_city_name': instance.customCityName,
  'address': instance.address,
  'zip': instance.zip,
  'is_active': instance.isActive,
  'coin_balance': instance.coinBalance,
  'customer_code': instance.customerCode,
  'referral_code': instance.referralCode,
  'referred_by': instance.referredBy,
  'referred_id': instance.referredId,
  'referred_user_name': instance.referredUserName,
  'is_premium_customer': instance.isPremiumCustomer,
  'is_online': instance.isOnline,
  'is_profile_preferences_completed': instance.isProfilePreferencesCompleted,
  'profile_completion_percentage': instance.profileCompletionPercentage,
  'is_instagram_connected': instance.isInstagramConnected,
  'preferred_gender': instance.preferredGender,
  'auth_status': instance.authStatus,
  'age': instance.age,
  'partnerExpectations': instance.partnerExpectations,
  'avatars': instance.avatars,
  'lifeStyleActivities': instance.lifeStyleActivities,
  'personalityTraits': instance.personalityTraits,
  'userIdentityProof': instance.userIdentityProof,
};
