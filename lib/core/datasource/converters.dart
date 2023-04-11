import 'package:json_annotation/json_annotation.dart';
import 'package:my_climbing_trek/core/data/climbing_category.dart';
import 'package:my_climbing_trek/core/data/climbing_route_type.dart';
import 'package:my_climbing_trek/core/data/climbing_style.dart';
import 'package:my_climbing_trek/core/data/ice_category.dart';
import 'package:my_climbing_trek/core/data/map_point.dart';
import 'package:my_climbing_trek/core/data/region.dart';
import 'package:my_climbing_trek/features/settings/domain/repositories/places_repository.dart';
import 'package:my_climbing_trek/service_locator.dart';

class MapPointConverter
    implements JsonConverter<MapPoint, Map<String, dynamic>> {
  const MapPointConverter();

  @override
  MapPoint fromJson(Map<String, dynamic> json) {
    return MapPoint(
        latitude: json['latitude'] as double,
        longitude: json['longitude'] as double);
  }

  @override
  Map<String, dynamic> toJson(MapPoint object) {
    return {'latitude': object.latitude, 'longitude': object.longitude};
  }
}

class RegionConverter implements JsonConverter<Region, String> {
  const RegionConverter();
  @override
  Region fromJson(String json) {
    return getIt<PlacesRepository>().regionById(json);
  }

  @override
  String toJson(Region object) {
    return object.id;
  }
}

class ClimbingCategoryConverter
    implements JsonConverter<ClimbingCategory, String> {
  const ClimbingCategoryConverter();
  @override
  ClimbingCategory fromJson(String json) {
    return ClimbingCategory.getById(json);
  }

  @override
  String toJson(ClimbingCategory object) {
    return object.id;
  }
}

class IceCategoryConverter implements JsonConverter<IceCategory, String> {
  const IceCategoryConverter();
  @override
  IceCategory fromJson(String json) {
    return IceCategory.getById(json);
  }

  @override
  String toJson(IceCategory object) {
    return object.id;
  }
}

class ClimbingRouteTypeConverter
    implements JsonConverter<ClimbingRouteType, String> {
  const ClimbingRouteTypeConverter();
  @override
  ClimbingRouteType fromJson(String json) {
    return ClimbingRouteType.getById(json);
  }

  @override
  String toJson(ClimbingRouteType object) {
    return object.id;
  }
}

class ClimbingStyleConverter implements JsonConverter<ClimbingStyle, String> {
  const ClimbingStyleConverter();
  @override
  ClimbingStyle fromJson(String json) {
    return ClimbingStyle.getById(json);
  }

  @override
  String toJson(ClimbingStyle object) {
    return object.id;
  }
}

class EpochDateTimeConverter implements JsonConverter<DateTime, int> {
  const EpochDateTimeConverter();

  @override
  DateTime fromJson(int json) => DateTime.fromMillisecondsSinceEpoch(json);

  @override
  int toJson(DateTime object) => object.millisecondsSinceEpoch;
}
