// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sender.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sender _$SenderFromJson(Map<String, dynamic> json) => Sender(
  type: json['type'] as String?,
  id: json['id'] as String?,
  name: json['name'] as String?,
  username: json['username'] as String?,
  email: json['email'] as String?,
  profilePhotoUrl: json['profile_photo_url'] as String?,
  square100ProfilePhotoUrl: json['square100_profile_photo_url'] as String?,
  square300ProfilePhotoUrl: json['square300_profile_photo_url'] as String?,
  square500ProfilePhotoUrl: json['square500_profile_photo_url'] as String?,
  age: json['age'],
);

Map<String, dynamic> _$SenderToJson(Sender instance) => <String, dynamic>{
  'type': instance.type,
  'id': instance.id,
  'name': instance.name,
  'username': instance.username,
  'email': instance.email,
  'profile_photo_url': instance.profilePhotoUrl,
  'square100_profile_photo_url': instance.square100ProfilePhotoUrl,
  'square300_profile_photo_url': instance.square300ProfilePhotoUrl,
  'square500_profile_photo_url': instance.square500ProfilePhotoUrl,
  'age': instance.age,
};
