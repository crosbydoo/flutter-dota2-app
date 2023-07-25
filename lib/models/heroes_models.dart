// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';

part 'heroes_models.g.dart';

@JsonSerializable()
class HeroesModel {
  String? name;
  String? localizedName;
  String? primaryAttr;
  String? attackType;
  List<String>? roles;
  int? legs;
  HeroesModel({
    this.name,
    this.localizedName,
    this.primaryAttr,
    this.attackType,
    this.roles,
    this.legs,
  });

  factory HeroesModel.fromJson(Map<String, dynamic> json) =>
      _$HeroesModelFromJson(json);
  Map<String, dynamic> toJson() => _$HeroesModelToJson(this);
}
