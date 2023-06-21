import 'package:dartz/dartz.dart';
import 'package:my_climbing_trek/core/data/region.dart';
import 'package:my_climbing_trek/core/failures/failure.dart';
import 'package:my_climbing_trek/features/trekking/domain/entities/trek.dart';
import 'package:my_climbing_trek/features/trekking/domain/entities/trek_point.dart';

abstract class TrekkingRemoteDataSource {
  Future<Either<Failure, List<Region>>> regions();

  Future<Either<Failure, List<Trek>>> treks({required Region region});

  List<TrekPoint> get points;
}
