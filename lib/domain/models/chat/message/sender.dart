import 'package:json_annotation/json_annotation.dart';

part 'sender.g.dart';

@JsonSerializable()
class Sender {
  String? type;
  String? id;
  String? name;
  String? username;
  String? email;
  @JsonKey(name: 'profile_photo_url')
  String? profilePhotoUrl;
  @JsonKey(name: 'square100_profile_photo_url')
  String? square100ProfilePhotoUrl;
  @JsonKey(name: 'square300_profile_photo_url')
  String? square300ProfilePhotoUrl;
  @JsonKey(name: 'square500_profile_photo_url')
  String? square500ProfilePhotoUrl;
  dynamic age;

  Sender({
    this.type,
    this.id,
    this.name,
    this.username,
    this.email,
    this.profilePhotoUrl,
    this.square100ProfilePhotoUrl,
    this.square300ProfilePhotoUrl,
    this.square500ProfilePhotoUrl,
    this.age,
  });

  factory Sender.fromJson(Map<String, dynamic> json) {
    return _$SenderFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SenderToJson(this);
}
