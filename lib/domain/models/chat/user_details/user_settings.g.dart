// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSettings _$UserSettingsFromJson(Map<String, dynamic> json) => UserSettings(
  id: json['id'] as String?,
  userId: (json['user_id'] as num?)?.toInt(),
  isRealGiftsAccepted: json['is_real_gifts_accepted'] as bool?,
  isGenderRevealed: json['is_gender_revealed'] as bool?,
  isHeightRevealed: json['is_height_revealed'] as bool?,
  isReligionRevealed: json['is_religion_revealed'] as bool?,
  isDrinkingHabitRevealed: json['is_drinking_habit_revealed'] as bool?,
  isSmokingHabitRevealed: json['is_smoking_habit_revealed'] as bool?,
  isSexualOrientationRevealed: json['is_sexual_orientation_revealed'] as bool?,
  isEducationalQualificationRevealed:
      json['is_educational_qualification_revealed'] as bool?,
  isPersonalityTraitsRevealed: json['is_personality_traits_revealed'] as bool?,
  isLifestyleActivitiesRevealed:
      json['is_lifestyle_activities_revealed'] as bool?,
  isContactDiscoveryEnabled: json['is_contact_discovery_enabled'] as bool?,
  isGhostModeEnabled: json['is_ghost_mode_enabled'] as bool?,
  isDarkModeEnabled: json['is_dark_mode_enabled'] as bool?,
  isReceivingPushNotifications:
      json['is_receiving_push_notifications'] as bool?,
  isReceivingFlashMessages: json['is_receiving_flash_messages'] as bool?,
  isLastSeenEnabled: json['is_last_seen_enabled'] as bool?,
  isOnlineStatusEnabled: json['is_online_status_enabled'] as bool?,
  isReadReceiptsEnabled: json['is_read_receipts_enabled'] as bool?,
);

Map<String, dynamic> _$UserSettingsToJson(
  UserSettings instance,
) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'is_real_gifts_accepted': instance.isRealGiftsAccepted,
  'is_gender_revealed': instance.isGenderRevealed,
  'is_height_revealed': instance.isHeightRevealed,
  'is_religion_revealed': instance.isReligionRevealed,
  'is_drinking_habit_revealed': instance.isDrinkingHabitRevealed,
  'is_smoking_habit_revealed': instance.isSmokingHabitRevealed,
  'is_sexual_orientation_revealed': instance.isSexualOrientationRevealed,
  'is_educational_qualification_revealed':
      instance.isEducationalQualificationRevealed,
  'is_personality_traits_revealed': instance.isPersonalityTraitsRevealed,
  'is_lifestyle_activities_revealed': instance.isLifestyleActivitiesRevealed,
  'is_contact_discovery_enabled': instance.isContactDiscoveryEnabled,
  'is_ghost_mode_enabled': instance.isGhostModeEnabled,
  'is_dark_mode_enabled': instance.isDarkModeEnabled,
  'is_receiving_push_notifications': instance.isReceivingPushNotifications,
  'is_receiving_flash_messages': instance.isReceivingFlashMessages,
  'is_last_seen_enabled': instance.isLastSeenEnabled,
  'is_online_status_enabled': instance.isOnlineStatusEnabled,
  'is_read_receipts_enabled': instance.isReadReceiptsEnabled,
};
