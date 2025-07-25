// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attributes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Attributes _$AttributesFromJson(Map<String, dynamic> json) => Attributes(
  name: json['name'] as String?,
  username: json['username'] as String?,
  email: json['email'] as String?,
  dateOfBirth: json['date_of_birth'] as String?,
  phone: json['phone'] as String?,
  gender: json['gender'] as String?,
  address: json['address'] as String?,
  isActive: json['is_active'] as bool?,
  coinBalance: (json['coin_balance'] as num?)?.toInt(),
  customerCode: json['customer_code'] as String?,
  isPremiumCustomer: json['is_premium_customer'] as bool?,
  profileCompletionPercentage: (json['profile_completion_percentage'] as num?)
      ?.toInt(),
  preferredGender: json['preferred_gender'] as String?,
  selfieVerificationImagePath:
      json['selfie_verification_image_path'] as String?,
  selfieVerificationVideoPath:
      json['selfie_verification_video_path'] as String?,
  selfieVerificationUploadedAt: json['selfie_verification_uploaded_at'] == null
      ? null
      : DateTime.parse(json['selfie_verification_uploaded_at'] as String),
  remainingSwipeLimit: (json['remaining_swipe_limit'] as num?)?.toInt(),
  resetSwipeLimitAt: json['reset_swipe_limit_at'] as String?,
  remainingSuperLikeLimit: (json['remaining_super_like_limit'] as num?)
      ?.toInt(),
  resetSuperLikeLimitAt: json['reset_super_like_limit_at'] as String?,
  remainingFlashMessageLimit: (json['remaining_flash_message_limit'] as num?)
      ?.toInt(),
  resetFlashMessageLimitAt: json['reset_flash_message_limit_at'] as String?,
  currentLocation: json['current_location'] as String?,
  currentLatitude: json['current_latitude'] as String?,
  currentLongitude: json['current_longitude'] as String?,
  heightInCm: (json['height_in_cm'] as num?)?.toInt(),
  relationshipStatusName: json['relationship_status_name'] as String?,
  religionName: json['religion_name'] as String?,
  drinkingHabitName: json['drinking_habit_name'] as String?,
  smokingHabitName: json['smoking_habit_name'] as String?,
  sexualOrientationName: json['sexual_orientation_name'] as String?,
  educationalQualificationName:
      json['educational_qualification_name'] as String?,
  nativeLanguageName: json['native_language_name'] as String?,
  occupationName: json['occupation_name'] as String?,
  filterPassportModeLocation: json['filter_passport_mode_location'] as String?,
  filterPassportModeLatitude: json['filter_passport_mode_latitude'] as String?,
  filterPassportModeLongitude:
      json['filter_passport_mode_longitude'] as String?,
  isRealGiftsAccepted: json['is_real_gifts_accepted'] as bool?,
  isReceivingPushNotifications:
      json['is_receiving_push_notifications'] as bool?,
  isReceivingFlashMessages: json['is_receiving_flash_messages'] as bool?,
  isReadReceiptsEnabled: json['is_read_receipts_enabled'] as bool?,
  profilePhotoUrl: json['profile_photo_url'] as String?,
  square100ProfilePhotoUrl: json['square100_profile_photo_url'] as String?,
  square300ProfilePhotoUrl: json['square300_profile_photo_url'] as String?,
  square500ProfilePhotoUrl: json['square500_profile_photo_url'] as String?,
  age: (json['age'] as num?)?.toInt(),
  authStatus: json['auth_status'] == null
      ? null
      : AuthStatus.fromJson(json['auth_status'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AttributesToJson(Attributes instance) =>
    <String, dynamic>{
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'date_of_birth': instance.dateOfBirth,
      'phone': instance.phone,
      'gender': instance.gender,
      'address': instance.address,
      'is_active': instance.isActive,
      'coin_balance': instance.coinBalance,
      'customer_code': instance.customerCode,
      'is_premium_customer': instance.isPremiumCustomer,
      'profile_completion_percentage': instance.profileCompletionPercentage,
      'preferred_gender': instance.preferredGender,
      'selfie_verification_image_path': instance.selfieVerificationImagePath,
      'selfie_verification_video_path': instance.selfieVerificationVideoPath,
      'selfie_verification_uploaded_at': instance.selfieVerificationUploadedAt
          ?.toIso8601String(),
      'remaining_swipe_limit': instance.remainingSwipeLimit,
      'reset_swipe_limit_at': instance.resetSwipeLimitAt,
      'remaining_super_like_limit': instance.remainingSuperLikeLimit,
      'reset_super_like_limit_at': instance.resetSuperLikeLimitAt,
      'remaining_flash_message_limit': instance.remainingFlashMessageLimit,
      'reset_flash_message_limit_at': instance.resetFlashMessageLimitAt,
      'current_location': instance.currentLocation,
      'current_latitude': instance.currentLatitude,
      'current_longitude': instance.currentLongitude,
      'height_in_cm': instance.heightInCm,
      'relationship_status_name': instance.relationshipStatusName,
      'religion_name': instance.religionName,
      'drinking_habit_name': instance.drinkingHabitName,
      'smoking_habit_name': instance.smokingHabitName,
      'sexual_orientation_name': instance.sexualOrientationName,
      'educational_qualification_name': instance.educationalQualificationName,
      'native_language_name': instance.nativeLanguageName,
      'occupation_name': instance.occupationName,
      'filter_passport_mode_location': instance.filterPassportModeLocation,
      'filter_passport_mode_latitude': instance.filterPassportModeLatitude,
      'filter_passport_mode_longitude': instance.filterPassportModeLongitude,
      'is_real_gifts_accepted': instance.isRealGiftsAccepted,
      'is_receiving_push_notifications': instance.isReceivingPushNotifications,
      'is_receiving_flash_messages': instance.isReceivingFlashMessages,
      'is_read_receipts_enabled': instance.isReadReceiptsEnabled,
      'profile_photo_url': instance.profilePhotoUrl,
      'square100_profile_photo_url': instance.square100ProfilePhotoUrl,
      'square300_profile_photo_url': instance.square300ProfilePhotoUrl,
      'square500_profile_photo_url': instance.square500ProfilePhotoUrl,
      'age': instance.age,
      'auth_status': instance.authStatus,
    };
