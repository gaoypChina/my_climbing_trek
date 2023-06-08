import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:my_climbing_trek/core/data/region.dart';
import 'package:my_climbing_trek/core/failures/failure.dart';
import 'package:my_climbing_trek/features/trekking/data/datasources/trekking_remote_datasource.dart';
import 'package:my_climbing_trek/features/trekking/domain/entities/trek.dart';
import 'package:my_climbing_trek/features/trekking/domain/entities/trek_poin_feature.dart';
import 'package:my_climbing_trek/features/trekking/domain/entities/trek_point.dart';
import 'package:my_climbing_trek/features/trekking/domain/entities/trek_point_type.dart';
import 'package:my_climbing_trek/features/trekking/domain/entities/trek_section.dart';

@LazySingleton(as: TrekkingRemoteDataSource)
class MockTrekkingRemoteDataSource implements TrekkingRemoteDataSource {
  static final archa = Region(
    name: 'Ала-Арча',
    state: 'Киргизия',
    id: 'archa',
    image:
        'https://biomehanika-ekb.ru/wp-content/uploads/2016/02/p0608_06-150x150.jpg',
  );

  final List<Region> _regions = [archa];

  final Map<Region, List<Trek>> _treks = {
    archa: [
      Trek(
          name: 'Хижина Рацека',
          sections: [
            TrekSection(
              start: TrekPoint(
                name: 'Отель Ала-Арча',
                type: TrekPointType.populatedLocality,
                altitude: 2200,
                id: 'ArchaHotel',
                image:
                    'https://putevye-istorii.ru/wp-content/uploads/2023/02/ala_archa-7-min.jpg',
                features: [
                  TrekPointFeature.lodge,
                  TrekPointFeature.eatery,
                  TrekPointFeature.phone,
                  TrekPointFeature.transport,
                ],
              ),
              finish: TrekPoint(
                name: 'Разбитое сердце',
                type: TrekPointType.referencePoint,
                altitude: 2380,
                id: 'ArchaBrokenHeart',
                image:
                    'https://putevye-istorii.ru/wp-content/uploads/2023/02/ala_archa-13-min.jpg',
              ),
              length: 1.5,
              description:
                  'Довольно резкий подъем, сначала тропа идет среди леса, потом — по открытой части',
            ),
            TrekSection(
              start: TrekPoint(
                name: 'Разбитое сердце',
                type: TrekPointType.referencePoint,
                altitude: 2380,
                id: 'ArchaBrokenHeart',
                image:
                    'https://putevye-istorii.ru/wp-content/uploads/2023/02/ala_archa-13-min.jpg',
              ),
              finish: TrekPoint(
                name: 'Водопад Ак-Сай',
                type: TrekPointType.waterfall,
                altitude: 2665,
                id: 'ArchaWaterfall',
                image:
                    'https://putevye-istorii.ru/wp-content/uploads/2023/02/ala_archa-22-min.jpg',
              ),
              length: 2.5,
              description:
                  'Проходит с небольшим набором высоты по открытому высокому берегу реки Ак-Сай. '
                  'Это самая живописная часть маршрута.',
            ),
            TrekSection(
              start: TrekPoint(
                name: 'Водопад Ак-Сай',
                type: TrekPointType.waterfall,
                altitude: 2665,
                id: 'ArchaWaterfall',
                image:
                    'https://putevye-istorii.ru/wp-content/uploads/2023/02/ala_archa-22-min.jpg',
              ),
              finish: TrekPoint(
                name: 'Xижина Рацека',
                type: TrekPointType.camp,
                altitude: 3300,
                id: 'ArchaHizhinaRaceka',
                image:
                    'https://putevye-istorii.ru/wp-content/uploads/2023/02/ala_archa-32-min.jpg',
                features: [
                  TrekPointFeature.lodge,
                  TrekPointFeature.eatery,
                ],
              ),
              length: 1.5,
              description:
                  'Самая сложная часть. Это крутой участок по неявной тропе среди скал и сыпухи',
            ),
          ],
          region: archa,
          mapImage:
              'https://putevye-istorii.ru/wp-content/uploads/2023/02/ala_archa-9-min.jpg',
          links: const [
            'https://putevye-istorii.ru/ala-archa-marshrut-do-vodopada-ak-saj-i-xizhiny-raceka/'
          ])
    ]
  };

  @override
  Future<Either<Failure, List<Region>>> regions() async {
    return Right(_regions);
  }

  @override
  Future<Either<Failure, List<Trek>>> treks({required Region region}) async {
    return Right(_treks[region]!);
  }
}
