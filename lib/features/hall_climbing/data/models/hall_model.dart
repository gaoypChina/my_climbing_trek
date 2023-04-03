import 'package:my_climbing_trek/core/data/map_point.dart';
import 'package:my_climbing_trek/features/hall_climbing/domain/entities/city.dart';
import 'package:my_climbing_trek/features/hall_climbing/domain/entities/climbing_hall.dart';

class HallModel extends ClimbingHall {
  const HallModel({
    required super.name,
    required super.address,
    required super.city,
    required super.image,
    required super.telephone,
    required super.website,
    required super.email,
    super.hasBigWall,
    super.hasBouldering,
    super.hasSpeed,
    super.hasAutoBelay,
    super.id,
  }) : super(point: const MapPoint());

  factory HallModel.fromJson(Map<String, dynamic> json, {int? id}) =>
      _$HallModelFromJson(json, id: id);

  Map<String, dynamic> toJson() => _$HallModelToJson(this);
}

HallModel _$HallModelFromJson(Map<String, dynamic> json, {int? id}) =>
    HallModel(
      name: json['name'] as String,
      address: json['address'] as String,
      city: City.fromJson(json['city']),
      image: json['image'] as String,
      telephone: json['telephone'] as String,
      website: json['website'] as String,
      email: json['email'] as String,
      hasBigWall: json['hasBigWall'] as bool? ?? false,
      hasBouldering: json['hasBouldering'] as bool? ?? false,
      hasSpeed: json['hasSpeed'] as bool? ?? false,
      hasAutoBelay: json['hasAutoBelay'] as bool? ?? false,
      id: id ?? json['id'],
    );

Map<String, dynamic> _$HallModelToJson(HallModel instance) => <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'city': instance.city,
      'hasBouldering': instance.hasBouldering,
      'hasBigWall': instance.hasBigWall,
      'hasSpeed': instance.hasSpeed,
      'hasAutoBelay': instance.hasAutoBelay,
      'image': instance.image,
      'telephone': instance.telephone,
      'website': instance.website,
      'email': instance.email,
      'id': instance.id,
    };
