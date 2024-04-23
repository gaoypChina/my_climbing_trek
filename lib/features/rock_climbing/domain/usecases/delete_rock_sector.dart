import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:my_climbing_trek/core/failures/failure.dart';
import 'package:my_climbing_trek/features/rock_climbing/domain/entities/rock_district.dart';
import 'package:my_climbing_trek/features/rock_climbing/domain/entities/rock_sector.dart';
import 'package:my_climbing_trek/features/rock_climbing/domain/repositories/rock_regions_repository.dart';

@LazySingleton()
class DeleteRockSector {
  final RockRegionsRepository _regionsRepository;

  DeleteRockSector(this._regionsRepository);

  Future<Either<Failure, Unit>> call({
    required RockDistrict district,
    required RockSector sector,
  }) async {
    return await _regionsRepository.deleteSector(
      district: district,
      sector: sector,
    );
  }
}
