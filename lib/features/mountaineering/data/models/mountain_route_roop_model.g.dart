// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mountain_route_roop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MountainRouteRoopModel _$MountainRouteRoopModelFromJson(
        Map<String, dynamic> json) =>
    MountainRouteRoopModel(
      climbingCategory: _$JsonConverterFromJson<String, ClimbingCategory>(
          json['climbingCategory'], const ClimbingCategoryConverter().fromJson),
      iceCategory: _$JsonConverterFromJson<String, IceCategory>(
          json['iceCategory'], const IceCategoryConverter().fromJson),
      length: json['length'] as int,
      slope: json['slope'] as int? ?? 0,
      anchor: json['anchor'] as String? ?? '',
      boltCount: json['boltCount'] as int? ?? 0,
      id: json['id'] as String? ?? '',
      description: json['description'] as String? ?? '',
      number: json['number'] as int,
      pieces: (json['pieces'] as List<dynamic>?)
          ?.map((e) => const MountainRoutePieceConverter()
              .fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MountainRouteRoopModelToJson(
        MountainRouteRoopModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'climbingCategory': _$JsonConverterToJson<String, ClimbingCategory>(
          instance.climbingCategory, const ClimbingCategoryConverter().toJson),
      'iceCategory': _$JsonConverterToJson<String, IceCategory>(
          instance.iceCategory, const IceCategoryConverter().toJson),
      'number': instance.number,
      'length': instance.length,
      'boltCount': instance.boltCount,
      'anchor': instance.anchor,
      'description': instance.description,
      'slope': instance.slope,
      'pieces': instance.pieces
          ?.map(const MountainRoutePieceConverter().toJson)
          .toList(),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

MountainRouteIcePieceModel _$MountainRouteIcePieceModelFromJson(
        Map<String, dynamic> json) =>
    MountainRouteIcePieceModel(
      length: json['length'] as int,
      slope: json['slope'] as int? ?? 0,
      category:
          const IceCategoryConverter().fromJson(json['category'] as String),
      type: const RoutePieceTypeConverter().fromJson(json['type'] as String),
    );

Map<String, dynamic> _$MountainRouteIcePieceModelToJson(
        MountainRouteIcePieceModel instance) =>
    <String, dynamic>{
      'length': instance.length,
      'slope': instance.slope,
      'type': const RoutePieceTypeConverter().toJson(instance.type),
      'category': const IceCategoryConverter().toJson(instance.category),
    };

MountainRouteRockPieceModel _$MountainRouteRockPieceModelFromJson(
        Map<String, dynamic> json) =>
    MountainRouteRockPieceModel(
      length: json['length'] as int,
      aidCategory: _$JsonConverterFromJson<String, AidCategory>(
          json['aidCategory'], const AidCategoryConverter().fromJson),
      climbingCategory: _$JsonConverterFromJson<String, ClimbingCategory>(
          json['climbingCategory'], const ClimbingCategoryConverter().fromJson),
      ussrCategory: _$JsonConverterFromJson<String, UssrClimbingCategory>(
          json['ussrCategory'], const UssrClimbingCategoryConverter().fromJson),
      slope: json['slope'] as int? ?? 0,
      type: const RoutePieceTypeConverter().fromJson(json['type'] as String),
    );

Map<String, dynamic> _$MountainRouteRockPieceModelToJson(
        MountainRouteRockPieceModel instance) =>
    <String, dynamic>{
      'length': instance.length,
      'slope': instance.slope,
      'type': const RoutePieceTypeConverter().toJson(instance.type),
      'climbingCategory': _$JsonConverterToJson<String, ClimbingCategory>(
          instance.climbingCategory, const ClimbingCategoryConverter().toJson),
      'aidCategory': _$JsonConverterToJson<String, AidCategory>(
          instance.aidCategory, const AidCategoryConverter().toJson),
      'ussrCategory': _$JsonConverterToJson<String, UssrClimbingCategory>(
          instance.ussrCategory, const UssrClimbingCategoryConverter().toJson),
    };

MountainRouteMixedPieceModel _$MountainRouteMixedPieceModelFromJson(
        Map<String, dynamic> json) =>
    MountainRouteMixedPieceModel(
      category:
          const MixedCategoryConverter().fromJson(json['category'] as String),
      length: json['length'] as int,
      slope: json['slope'] as int? ?? 0,
      type: const RoutePieceTypeConverter().fromJson(json['type'] as String),
    );

Map<String, dynamic> _$MountainRouteMixedPieceModelToJson(
        MountainRouteMixedPieceModel instance) =>
    <String, dynamic>{
      'length': instance.length,
      'slope': instance.slope,
      'type': const RoutePieceTypeConverter().toJson(instance.type),
      'category': const MixedCategoryConverter().toJson(instance.category),
    };
