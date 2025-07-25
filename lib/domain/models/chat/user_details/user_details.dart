import 'package:json_annotation/json_annotation.dart';

import 'user_settings.dart';

part 'user_details.g.dart';

@JsonSerializable()
class UserDetails {
  String? type;
  String? id;
  @JsonKey(name: 'message_received_from_partner_at')
  String? messageReceivedFromPartnerAt;
  @JsonKey(name: 'auth_user_id')
  int? authUserId;
  String? name;
  String? username;
  String? email;
  String? phone;
  String? gender;
  @JsonKey(name: 'is_active')
  bool? isActive;
  @JsonKey(name: 'customer_code')
  String? customerCode;
  @JsonKey(name: 'is_premium_customer')
  bool? isPremiumCustomer;
  @JsonKey(name: 'is_online')
  bool? isOnline;
  @JsonKey(name: 'last_active_at')
  DateTime? lastActiveAt;
  @JsonKey(name: 'date_of_birth')
  String? dateOfBirth;
  @JsonKey(name: 'referral_code')
  String? referralCode;
  @JsonKey(name: 'is_vanish_mode_enabled')
  bool? isVanishModeEnabled;
  @JsonKey(name: 'is_chat_initiated')
  bool? isChatInitiated;
  @JsonKey(name: 'likeback_created_at')
  DateTime? likebackCreatedAt;
  @JsonKey(name: 'profile_photo_url')
  String? profilePhotoUrl;
  @JsonKey(name: 'square100_profile_photo_url')
  String? square100ProfilePhotoUrl;
  @JsonKey(name: 'square300_profile_photo_url')
  String? square300ProfilePhotoUrl;
  @JsonKey(name: 'square500_profile_photo_url')
  String? square500ProfilePhotoUrl;
  int? age;
  UserSettings? userSettings;

  UserDetails({
    this.type,
    this.id,
    this.messageReceivedFromPartnerAt,
    this.authUserId,
    this.name,
    this.username,
    this.email,
    this.phone,
    this.gender,
    this.isActive,
    this.customerCode,
    this.isPremiumCustomer,
    this.isOnline,
    this.lastActiveAt,
    this.dateOfBirth,
    this.referralCode,
    this.isVanishModeEnabled,
    this.isChatInitiated,
    this.likebackCreatedAt,
    this.profilePhotoUrl,
    this.square100ProfilePhotoUrl,
    this.square300ProfilePhotoUrl,
    this.square500ProfilePhotoUrl,
    this.age,
    this.userSettings,
  });

  factory UserDetails.fromJson(Map<String, dynamic> json) {
    return _$UserDetailsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserDetailsToJson(this);
}
