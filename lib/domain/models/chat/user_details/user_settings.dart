import 'package:json_annotation/json_annotation.dart';

part 'user_settings.g.dart';

@JsonSerializable()
class UserSettings {
  String? id;
  @JsonKey(name: 'user_id')
  int? userId;
  @JsonKey(name: 'is_real_gifts_accepted')
  bool? isRealGiftsAccepted;
  @JsonKey(name: 'is_gender_revealed')
  bool? isGenderRevealed;
  @JsonKey(name: 'is_height_revealed')
  bool? isHeightRevealed;
  @JsonKey(name: 'is_religion_revealed')
  bool? isReligionRevealed;
  @JsonKey(name: 'is_drinking_habit_revealed')
  bool? isDrinkingHabitRevealed;
  @JsonKey(name: 'is_smoking_habit_revealed')
  bool? isSmokingHabitRevealed;
  @JsonKey(name: 'is_sexual_orientation_revealed')
  bool? isSexualOrientationRevealed;
  @JsonKey(name: 'is_educational_qualification_revealed')
  bool? isEducationalQualificationRevealed;
  @JsonKey(name: 'is_personality_traits_revealed')
  bool? isPersonalityTraitsRevealed;
  @JsonKey(name: 'is_lifestyle_activities_revealed')
  bool? isLifestyleActivitiesRevealed;
  @JsonKey(name: 'is_contact_discovery_enabled')
  bool? isContactDiscoveryEnabled;
  @JsonKey(name: 'is_ghost_mode_enabled')
  bool? isGhostModeEnabled;
  @JsonKey(name: 'is_dark_mode_enabled')
  bool? isDarkModeEnabled;
  @JsonKey(name: 'is_receiving_push_notifications')
  bool? isReceivingPushNotifications;
  @JsonKey(name: 'is_receiving_flash_messages')
  bool? isReceivingFlashMessages;
  @JsonKey(name: 'is_last_seen_enabled')
  bool? isLastSeenEnabled;
  @JsonKey(name: 'is_online_status_enabled')
  bool? isOnlineStatusEnabled;
  @JsonKey(name: 'is_read_receipts_enabled')
  bool? isReadReceiptsEnabled;

  UserSettings({
    this.id,
    this.userId,
    this.isRealGiftsAccepted,
    this.isGenderRevealed,
    this.isHeightRevealed,
    this.isReligionRevealed,
    this.isDrinkingHabitRevealed,
    this.isSmokingHabitRevealed,
    this.isSexualOrientationRevealed,
    this.isEducationalQualificationRevealed,
    this.isPersonalityTraitsRevealed,
    this.isLifestyleActivitiesRevealed,
    this.isContactDiscoveryEnabled,
    this.isGhostModeEnabled,
    this.isDarkModeEnabled,
    this.isReceivingPushNotifications,
    this.isReceivingFlashMessages,
    this.isLastSeenEnabled,
    this.isOnlineStatusEnabled,
    this.isReadReceiptsEnabled,
  });

  factory UserSettings.fromJson(Map<String, dynamic> json) {
    return _$UserSettingsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserSettingsToJson(this);
}
