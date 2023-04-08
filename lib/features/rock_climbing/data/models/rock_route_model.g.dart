// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rock_route_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RockRouteModel _$RockRouteModelFromJson(Map<String, dynamic> json) =>
    RockRouteModel(
      name: json['name'] as String,
      category:
          const ClimbingCategoryConverter().fromJson(json['category'] as int),
      type: const ClimbingRouteTypeConverter().fromJson(json['type'] as int),
      id: json['id'] as String? ?? '',
      anchor: json['anchor'] as String? ?? '',
      length: json['length'] as int? ?? 0,
      boltCount: json['boltCount'] as int? ?? 0,
      number: json['number'] as int?,
      remark: json['remark'] as String? ?? '',
      author: json['author'] as String? ?? '',
    );

Map<String, dynamic> _$RockRouteModelToJson(RockRouteModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': const ClimbingCategoryConverter().toJson(instance.category),
      'type': const ClimbingRouteTypeConverter().toJson(instance.type),
      'author': instance.author,
      'boltCount': instance.boltCount,
      'anchor': instance.anchor,
      'name': instance.name,
      'number': instance.number,
      'length': instance.length,
      'remark': instance.remark,
    };
