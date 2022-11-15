import 'dart:convert';

import 'package:climbing_diary/core/failures/failure.dart';
import 'package:climbing_diary/features/hall_climbing/data/datasources/climbing_hall_data_source.dart';
import 'package:climbing_diary/features/hall_climbing/data/datasources/mock_climbing_hall_data_source.dart';
import 'package:climbing_diary/features/hall_climbing/data/models/hall_model.dart';
import 'package:climbing_diary/features/hall_climbing/data/models/hall_route_model.dart';
import 'package:dartz/dartz.dart';
import 'package:climbing_diary/features/hall_climbing/domain/entities/hall_routes_filter.dart';
import 'package:climbing_diary/features/hall_climbing/domain/entities/climbing_hall_route.dart';
import 'package:climbing_diary/features/hall_climbing/domain/entities/climbing_hall.dart';
import 'package:climbing_diary/features/hall_climbing/domain/entities/city.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ClimbingHallDataSource)
class LocalClimbingHallDataSource implements ClimbingHallDataSource {
  static const _climbingHallsName = 'climbingHalls';
  static const _climbingHallName = 'climbingHall';

  @override
  Future<Either<Failure, ClimbingHallRoute>> addRoute(
      {required ClimbingHall climbingHall,
      required ClimbingHallRoute route}) async {
    final routesBox =
        await Hive.openBox<String>('$_climbingHallName${climbingHall.id}');

    final int id = await routesBox
        .add(json.encode(HallRouteModel.fromOrign(route).toJson()));

    return Right(route);
  }

  @override
  Future<Either<Failure, List<HallRouteModel>>> climbingHallRoutes(
      {required ClimbingHall climbingHall, HallRouteFilter? filter}) async {
    final routesBox =
        await Hive.openBox<String>('$_climbingHallName${climbingHall.id}');

    return Right(routesBox.values
        .map((value) => HallRouteModel.fromJson(json.decode(value)))
        .where((element) => filter?.match(element) ?? true)
        .toList());
  }

  @override
  Future<Either<Failure, List<HallModel>>> climbingHalls() async {
    final hallsBox = await Hive.openBox<String>(_climbingHallsName);

    if (hallsBox.isEmpty) {
      for (var element in MockClimbingHallDataSource.climbingHallsList) {
        await hallsBox.put(element.id, json.encode(element.toJson()));
      }
    }
    // late final Box<ClimbingHall> hallsBox;
    // if (await Hive.boxExists(_climbingHallsName)) {
    //   hallsBox = await Hive.openBox<ClimbingHall>(_climbingHallsName);
    // } else {
    //   hallsBox = Hive.box<ClimbingHall>(_climbingHallsName);

    // }
    return Right(hallsBox.values
        .map((value) => HallModel.fromJson(json.decode(value)))
        .toList());
  }

  @override
  Future<Either<Failure, List<City>>> cities() async {
    return const Right(City.values);
  }
}
