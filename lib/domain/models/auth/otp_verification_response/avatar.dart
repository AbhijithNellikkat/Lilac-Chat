import 'package:json_annotation/json_annotation.dart';

part 'avatar.g.dart';

@JsonSerializable()
class Avatar {
  String? id;
  @JsonKey(name: 'user_id')
  int? userId;
  @JsonKey(name: 'is_active')
  bool? isActive;
  @JsonKey(name: 'approved_at')
  DateTime? approvedAt;
  @JsonKey(name: 'approved_by')
  int? approvedBy;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  @JsonKey(name: 'deleted_at')
  dynamic deletedAt;
  @JsonKey(name: 'image_url')
  String? imageUrl;
  @JsonKey(name: 'square100_image_url')
  String? square100ImageUrl;
  @JsonKey(name: 'square300_image_url')
  String? square300ImageUrl;
  @JsonKey(name: 'square500_image_url')
  String? square500ImageUrl;

  Avatar({
    this.id,
    this.userId,
    this.isActive,
    this.approvedAt,
    this.approvedBy,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.imageUrl,
    this.square100ImageUrl,
    this.square300ImageUrl,
    this.square500ImageUrl,
  });

  factory Avatar.fromJson(Map<String, dynamic> json) {
    return _$AvatarFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AvatarToJson(this);
}
