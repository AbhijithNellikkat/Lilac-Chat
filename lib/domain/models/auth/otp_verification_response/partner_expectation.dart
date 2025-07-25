import 'package:json_annotation/json_annotation.dart';

part 'partner_expectation.g.dart';

@JsonSerializable()
class PartnerExpectation {
  String? id;
  String? name;
  String? icon;
  @JsonKey(name: 'trait_type_id')
  int? traitTypeId;
  @JsonKey(name: 'created_by')
  int? createdBy;
  @JsonKey(name: 'updated_by')
  int? updatedBy;
  @JsonKey(name: 'created_at')
  dynamic createdAt;
  @JsonKey(name: 'updated_at')
  dynamic updatedAt;
  @JsonKey(name: 'laravel_through_key')
  int? laravelThroughKey;
  @JsonKey(name: 'icon_url')
  String? iconUrl;

  PartnerExpectation({
    this.id,
    this.name,
    this.icon,
    this.traitTypeId,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.laravelThroughKey,
    this.iconUrl,
  });

  factory PartnerExpectation.fromJson(Map<String, dynamic> json) {
    return _$PartnerExpectationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PartnerExpectationToJson(this);
}
