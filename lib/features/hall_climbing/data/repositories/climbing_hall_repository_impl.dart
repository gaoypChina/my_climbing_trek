import 'package:climbing_diary/features/hall_climbing/data/datasources/climbing_hall_data_source.dart';
import 'package:climbing_diary/features/hall_climbing/domain/entities/city.dart';
import 'package:climbing_diary/core/failures/failure.dart';
import 'package:climbing_diary/features/hall_climbing/domain/entities/climbing_hall.dart';
import 'package:climbing_diary/features/hall_climbing/domain/entities/climbing_hall_route.dart';
import 'package:climbing_diary/features/hall_climbing/domain/repositories/climbing_hall_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ClimbingHallRepository)
class ClimbingHallRepositoryImpl implements ClimbingHallRepository {
  final ClimbingHallDataSource climbingHallDataSource;

  ClimbingHallRepositoryImpl({required this.climbingHallDataSource});
  @override
  Future<Either<Failure, List<City>>> sities() async {
    return await climbingHallDataSource.sities();
  }

  @override
  Future<Either<Failure, List<ClimbingHall>>> climbingHalls() async {
    return await climbingHallDataSource.climbingHalls();
  }

  @override
  Future<Either<Failure, List<ClimbingHallRoute>>> climbingHallRoutes(
      {required ClimbingHall climbingHall}) async {
    return await climbingHallDataSource.climbingHallRoutes(
        climbingHall: climbingHall);
  }
}
