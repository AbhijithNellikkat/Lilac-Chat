// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner_expectation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartnerExpectation _$PartnerExpectationFromJson(Map<String, dynamic> json) =>
    PartnerExpectation(
      id: json['id'] as String?,
      name: json['name'] as String?,
      icon: json['icon'] as String?,
      traitTypeId: (json['trait_type_id'] as num?)?.toInt(),
      createdBy: (json['created_by'] as num?)?.toInt(),
      updatedBy: (json['updated_by'] as num?)?.toInt(),
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      laravelThroughKey: (json['laravel_through_key'] as num?)?.toInt(),
      iconUrl: json['icon_url'] as String?,
    );

Map<String, dynamic> _$PartnerExpectationToJson(PartnerExpectation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'trait_type_id': instance.traitTypeId,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'laravel_through_key': instance.laravelThroughKey,
      'icon_url': instance.iconUrl,
    };
