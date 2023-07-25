// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heroes_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HeroesModel _$HeroesModelFromJson(Map<String, dynamic> json) => HeroesModel(
      name: json['name'] as String?,
      localizedName: json['localized_name'] as String?,
      primaryAttr: json['primary_attr'] as String?,
      attackType: json['attack_type'] as String?,
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
      legs: json['legs'] as int?,
    );

Map<String, dynamic> _$HeroesModelToJson(HeroesModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'localized_name': instance.localizedName,
      'primary_attr': instance.primaryAttr,
      'attack_type': instance.attackType,
      'roles': instance.roles,
      'legs': instance.legs,
    };
