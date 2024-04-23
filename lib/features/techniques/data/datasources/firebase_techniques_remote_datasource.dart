import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:my_climbing_trek/core/failures/failure.dart';
import 'package:my_climbing_trek/features/techniques/data/datasources/techniques_remote_datasource.dart';
import 'package:my_climbing_trek/features/techniques/data/models/converters.dart';
import 'package:my_climbing_trek/features/techniques/domain/entities/technique.dart';
import 'package:my_climbing_trek/features/techniques/domain/entities/technique_group.dart';

@LazySingleton(as: TechniquesRemoteDataSource)
class FirebaseTechniquesRemoteDataSource implements TechniquesRemoteDataSource {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseAuth _firebaseAuth;

  late final CollectionReference<TechniqueGroup> _techniqueGroupsRef;

  final String _techniqueGroupsCollectionName = 'technique-groups';
  final String _techniquesCollectionName = 'techniques';
  final String _adminsCollectionName = 'technique-groups-admins';

  FirebaseTechniquesRemoteDataSource(
    this._firebaseFirestore,
    this._firebaseAuth,
  ) {
    _techniqueGroupsRef = _firebaseFirestore
        .collection(_techniqueGroupsCollectionName)
        .withConverter(
          fromFirestore: (snapshot, options) {
            final json = snapshot.data()!;

            json['id'] = snapshot.id;

            return const TechniqueGroupConverter().fromJson(json);
          },
          toFirestore: (value, options) => {},
        );
  }

  @override
  Future<Either<Failure, List<TechniqueGroup>>> groups() async {
    final techniquesGroupData = await _techniqueGroupsRef.get(
      const GetOptions(
        serverTimestampBehavior: ServerTimestampBehavior.none,
      ),
    );

    return Right(
        techniquesGroupData.docs.map((snapshot) => snapshot.data()).toList());
  }

  @override
  Future<Either<Failure, List<Technique>>> techniques(
      {required TechniqueGroup group}) async {
    final techniquesData = await _techniquesRef(group: group).get(
      const GetOptions(
        serverTimestampBehavior: ServerTimestampBehavior.none,
      ),
    );

    return Right(
        techniquesData.docs.map((snapshot) => snapshot.data()).toList());
  }

  CollectionReference<Technique> _techniquesRef(
          {required TechniqueGroup group}) =>
      _firebaseFirestore
          .collection(
              '$_techniqueGroupsCollectionName/${group.id}/$_techniquesCollectionName')
          .withConverter(
            fromFirestore: (snapshot, options) {
              final json = snapshot.data()!;

              json['id'] = snapshot.id;

              return const TechniqueConverter().fromJson(json);
            },
            toFirestore: (value, options) => {},
          );

  @override
  Future<Either<Failure, bool>> getEditing() async {
    if (_firebaseAuth.currentUser != null) {
      final permissionData = await _firebaseFirestore
          .collection(_adminsCollectionName)
          .doc(_firebaseAuth.currentUser!.uid)
          .get();

      return Right(permissionData.exists);
    } else {
      return const Right(false);
    }
  }
}
