import 'package:json_annotation/json_annotation.dart';

import 'auth_status/auth_status.dart';
import 'avatar.dart';
import 'partner_expectation.dart';

part 'otp_verification_response.g.dart';

@JsonSerializable()
class OtpVerificationResponse {
  String? type;
  String? id;
  String? name;
  String? username;
  String? email;
  @JsonKey(name: 'email_verified_at')
  dynamic emailVerifiedAt;
  @JsonKey(name: 'current_team_id')
  dynamic currentTeamId;
  @JsonKey(name: 'profile_photo_path')
  dynamic profilePhotoPath;
  @JsonKey(name: 'profile_photo_id')
  dynamic profilePhotoId;
  @JsonKey(name: 'date_of_birth')
  String? dateOfBirth;
  String? phone;
  @JsonKey(name: 'current_subscription_plan_id')
  dynamic currentSubscriptionPlanId;
  @JsonKey(name: 'is_profile_boost_active')
  int? isProfileBoostActive;
  String? gender;
  @JsonKey(name: 'fcm_token')
  String? fcmToken;
  @JsonKey(name: 'country_id')
  dynamic countryId;
  @JsonKey(name: 'country_name')
  dynamic countryName;
  @JsonKey(name: 'state_id')
  dynamic stateId;
  @JsonKey(name: 'state_name')
  dynamic stateName;
  @JsonKey(name: 'city_id')
  dynamic cityId;
  @JsonKey(name: 'city_name')
  dynamic cityName;
  @JsonKey(name: 'custom_city_name')
  dynamic customCityName;
  dynamic address;
  dynamic zip;
  @JsonKey(name: 'is_active')
  bool? isActive;
  @JsonKey(name: 'coin_balance')
  int? coinBalance;
  @JsonKey(name: 'customer_code')
  String? customerCode;
  @JsonKey(name: 'referral_code')
  String? referralCode;
  @JsonKey(name: 'referred_by')
  String? referredBy;
  @JsonKey(name: 'referred_id')
  int? referredId;
  @JsonKey(name: 'referred_user_name')
  String? referredUserName;
  @JsonKey(name: 'is_premium_customer')
  bool? isPremiumCustomer;
  @JsonKey(name: 'is_online')
  bool? isOnline;
  @JsonKey(name: 'is_profile_preferences_completed')
  bool? isProfilePreferencesCompleted;
  @JsonKey(name: 'profile_completion_percentage')
  int? profileCompletionPercentage;
  @JsonKey(name: 'is_instagram_connected')
  int? isInstagramConnected;
  @JsonKey(name: 'preferred_gender')
  String? preferredGender;
  @JsonKey(name: 'auth_status')
  AuthStatus? authStatus;
  int? age;
  List<PartnerExpectation>? partnerExpectations;
  List<Avatar>? avatars;
  List<dynamic>? lifeStyleActivities;
  List<dynamic>? personalityTraits;
  List<dynamic>? userIdentityProof;

  OtpVerificationResponse({
    this.type,
    this.authStatus,
    this.id,
    this.name,
    this.username,
    this.email,
    this.emailVerifiedAt,
    this.currentTeamId,
    this.profilePhotoPath,
    this.profilePhotoId,
    this.dateOfBirth,
    this.phone,
    this.currentSubscriptionPlanId,
    this.isProfileBoostActive,
    this.gender,
    this.fcmToken,
    this.countryId,
    this.countryName,
    this.stateId,
    this.stateName,
    this.cityId,
    this.cityName,
    this.customCityName,
    this.address,
    this.zip,
    this.isActive,
    this.coinBalance,
    this.customerCode,
    this.referralCode,
    this.referredBy,
    this.referredId,
    this.referredUserName,
    this.isPremiumCustomer,
    this.isOnline,
    this.isProfilePreferencesCompleted,
    this.profileCompletionPercentage,
    this.isInstagramConnected,
    this.preferredGender,
    this.age,
    this.partnerExpectations,
    this.avatars,
    this.lifeStyleActivities,
    this.personalityTraits,
    this.userIdentityProof,
  });

  factory OtpVerificationResponse.fromJson(Map<String, dynamic> json) {
    return _$OtpVerificationResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OtpVerificationResponseToJson(this);
}
