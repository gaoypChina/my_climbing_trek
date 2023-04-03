import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_climbing_trek/core/failures/failure.dart';
import 'package:my_climbing_trek/features/hall_climbing/data/datasources/remote_gym_data_source.dart';
import 'package:my_climbing_trek/features/hall_climbing/data/models/hall_model.dart';
import 'package:my_climbing_trek/features/hall_climbing/data/models/hall_route_model.dart';
import 'package:my_climbing_trek/features/hall_climbing/domain/entities/climbing_hall.dart';
import 'package:my_climbing_trek/features/hall_climbing/domain/entities/climbing_hall_route.dart';
import 'package:my_climbing_trek/features/hall_climbing/domain/entities/hall_routes_filter.dart';

@LazySingleton(as: RemoteGymDataSource)
class RemoteGymDataSourceImpl implements RemoteGymDataSource {
  final FirebaseFirestore _firebaseFirestore;

  late final CollectionReference<HallModel> _gymsRef;

  final String _gymsCollectionName = 'climbing-gyms';
  final String _routesCollectionName = 'routes';

  RemoteGymDataSourceImpl(this._firebaseFirestore) {
    _gymsRef = _firebaseFirestore.collection(_gymsCollectionName).withConverter(
          fromFirestore: (snapshot, options) {
            final json = snapshot.data()!;

            return HallModel.fromJson(json, id: int.parse(snapshot.id));
          },
          toFirestore: (value, options) => {},
        );
  }

  @override
  Future<Either<Failure, List<ClimbingHall>>> gyms() async {
    final gyms = await _gymsRef.get(
      const GetOptions(
        serverTimestampBehavior: ServerTimestampBehavior.none,
      ),
    );

    return Right(gyms.docs.map((snapshot) => snapshot.data()).toList());
  }

  @override
  Future<Either<Failure, List<ClimbingHallRoute>>> gymRoutes({
    required ClimbingHall climbingHall,
    HallRouteFilter? filter,
  }) async {
    final CollectionReference<HallRouteModel> routesRef = _firebaseFirestore
        .collection(
            '$_gymsCollectionName/${climbingHall.id}/$_routesCollectionName')
        .withConverter(
          fromFirestore: (snapshot, options) {
            final json = snapshot.data()!;

            return HallRouteModel.fromJson(json, id: int.parse(snapshot.id));
          },
          toFirestore: (value, options) => {},
        );

    final routes = await routesRef.get(
      const GetOptions(
        serverTimestampBehavior: ServerTimestampBehavior.none,
      ),
    );

    return Right(routes.docs.map((snapshot) => snapshot.data()).toList());
  }
}
