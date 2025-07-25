// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Avatar _$AvatarFromJson(Map<String, dynamic> json) => Avatar(
  id: json['id'] as String?,
  userId: (json['user_id'] as num?)?.toInt(),
  isActive: json['is_active'] as bool?,
  approvedAt: json['approved_at'] == null
      ? null
      : DateTime.parse(json['approved_at'] as String),
  approvedBy: (json['approved_by'] as num?)?.toInt(),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  deletedAt: json['deleted_at'],
  imageUrl: json['image_url'] as String?,
  square100ImageUrl: json['square100_image_url'] as String?,
  square300ImageUrl: json['square300_image_url'] as String?,
  square500ImageUrl: json['square500_image_url'] as String?,
);

Map<String, dynamic> _$AvatarToJson(Avatar instance) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'is_active': instance.isActive,
  'approved_at': instance.approvedAt?.toIso8601String(),
  'approved_by': instance.approvedBy,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'deleted_at': instance.deletedAt,
  'image_url': instance.imageUrl,
  'square100_image_url': instance.square100ImageUrl,
  'square300_image_url': instance.square300ImageUrl,
  'square500_image_url': instance.square500ImageUrl,
};
