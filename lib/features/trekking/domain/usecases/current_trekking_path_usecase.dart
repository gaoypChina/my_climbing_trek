import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:my_climbing_trek/core/failures/failure.dart';
import 'package:my_climbing_trek/features/trekking/domain/entities/trekking_path.dart';
import 'package:my_climbing_trek/features/trekking/domain/repositories/trekking_path_repository.dart';

@LazySingleton()
class CurrentTrekkingPathUsecase {
  final TrekkingPathRepository _trekkingPathRepository;

  CurrentTrekkingPathUsecase(this._trekkingPathRepository);

  Future<Either<Failure, TrekkingPath?>> call() async {
    return _trekkingPathRepository.currentPath();
  }
}
