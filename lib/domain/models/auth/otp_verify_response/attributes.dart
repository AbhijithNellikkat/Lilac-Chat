import 'package:json_annotation/json_annotation.dart';

import 'auth_status.dart';

part 'attributes.g.dart';

@JsonSerializable()
class Attributes {
  String? name;
  String? username;
  String? email;
  @JsonKey(name: 'date_of_birth')
  String? dateOfBirth;
  String? phone;
  String? gender;
  String? address;
  @JsonKey(name: 'is_active')
  bool? isActive;
  @JsonKey(name: 'coin_balance')
  int? coinBalance;
  @JsonKey(name: 'customer_code')
  String? customerCode;
  @JsonKey(name: 'is_premium_customer')
  bool? isPremiumCustomer;
  @JsonKey(name: 'profile_completion_percentage')
  int? profileCompletionPercentage;
  @JsonKey(name: 'preferred_gender')
  String? preferredGender;
  @JsonKey(name: 'selfie_verification_image_path')
  String? selfieVerificationImagePath;
  @JsonKey(name: 'selfie_verification_video_path')
  String? selfieVerificationVideoPath;
  @JsonKey(name: 'selfie_verification_uploaded_at')
  DateTime? selfieVerificationUploadedAt;
  @JsonKey(name: 'remaining_swipe_limit')
  int? remainingSwipeLimit;
  @JsonKey(name: 'reset_swipe_limit_at')
  String? resetSwipeLimitAt;
  @JsonKey(name: 'remaining_super_like_limit')
  int? remainingSuperLikeLimit;
  @JsonKey(name: 'reset_super_like_limit_at')
  String? resetSuperLikeLimitAt;
  @JsonKey(name: 'remaining_flash_message_limit')
  int? remainingFlashMessageLimit;
  @JsonKey(name: 'reset_flash_message_limit_at')
  String? resetFlashMessageLimitAt;
  @JsonKey(name: 'current_location')
  String? currentLocation;
  @JsonKey(name: 'current_latitude')
  String? currentLatitude;
  @JsonKey(name: 'current_longitude')
  String? currentLongitude;
  @JsonKey(name: 'height_in_cm')
  int? heightInCm;
  @JsonKey(name: 'relationship_status_name')
  String? relationshipStatusName;
  @JsonKey(name: 'religion_name')
  String? religionName;
  @JsonKey(name: 'drinking_habit_name')
  String? drinkingHabitName;
  @JsonKey(name: 'smoking_habit_name')
  String? smokingHabitName;
  @JsonKey(name: 'sexual_orientation_name')
  String? sexualOrientationName;
  @JsonKey(name: 'educational_qualification_name')
  String? educationalQualificationName;
  @JsonKey(name: 'native_language_name')
  String? nativeLanguageName;
  @JsonKey(name: 'occupation_name')
  String? occupationName;
  @JsonKey(name: 'filter_passport_mode_location')
  String? filterPassportModeLocation;
  @JsonKey(name: 'filter_passport_mode_latitude')
  String? filterPassportModeLatitude;
  @JsonKey(name: 'filter_passport_mode_longitude')
  String? filterPassportModeLongitude;
  @JsonKey(name: 'is_real_gifts_accepted')
  bool? isRealGiftsAccepted;
  @JsonKey(name: 'is_receiving_push_notifications')
  bool? isReceivingPushNotifications;
  @JsonKey(name: 'is_receiving_flash_messages')
  bool? isReceivingFlashMessages;
  @JsonKey(name: 'is_read_receipts_enabled')
  bool? isReadReceiptsEnabled;
  @JsonKey(name: 'profile_photo_url')
  String? profilePhotoUrl;
  @JsonKey(name: 'square100_profile_photo_url')
  String? square100ProfilePhotoUrl;
  @JsonKey(name: 'square300_profile_photo_url')
  String? square300ProfilePhotoUrl;
  @JsonKey(name: 'square500_profile_photo_url')
  String? square500ProfilePhotoUrl;
  int? age;
  @JsonKey(name: 'auth_status')
  AuthStatus? authStatus;

  Attributes({
    this.name,
    this.username,
    this.email,
    this.dateOfBirth,
    this.phone,
    this.gender,
    this.address,
    this.isActive,
    this.coinBalance,
    this.customerCode,
    this.isPremiumCustomer,
    this.profileCompletionPercentage,
    this.preferredGender,
    this.selfieVerificationImagePath,
    this.selfieVerificationVideoPath,
    this.selfieVerificationUploadedAt,
    this.remainingSwipeLimit,
    this.resetSwipeLimitAt,
    this.remainingSuperLikeLimit,
    this.resetSuperLikeLimitAt,
    this.remainingFlashMessageLimit,
    this.resetFlashMessageLimitAt,
    this.currentLocation,
    this.currentLatitude,
    this.currentLongitude,
    this.heightInCm,
    this.relationshipStatusName,
    this.religionName,
    this.drinkingHabitName,
    this.smokingHabitName,
    this.sexualOrientationName,
    this.educationalQualificationName,
    this.nativeLanguageName,
    this.occupationName,
    this.filterPassportModeLocation,
    this.filterPassportModeLatitude,
    this.filterPassportModeLongitude,
    this.isRealGiftsAccepted,
    this.isReceivingPushNotifications,
    this.isReceivingFlashMessages,
    this.isReadReceiptsEnabled,
    this.profilePhotoUrl,
    this.square100ProfilePhotoUrl,
    this.square300ProfilePhotoUrl,
    this.square500ProfilePhotoUrl,
    this.age,
    this.authStatus,
  });

  factory Attributes.fromJson(Map<String, dynamic> json) {
    return _$AttributesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AttributesToJson(this);
}
