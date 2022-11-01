// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'features/hall_climbing/data/datasources/climbing_hall_data_source.dart'
    as _i3;
import 'features/hall_climbing/data/datasources/hall_treaning_data_source.dart'
    as _i8;
import 'features/hall_climbing/data/datasources/mock_climbing_hall_data_source.dart'
    as _i4;
import 'features/hall_climbing/data/datasources/mock_hall_treaning_data_source.dart'
    as _i9;
import 'features/hall_climbing/data/repositories/climbing_hall_repository_impl.dart'
    as _i6;
import 'features/hall_climbing/data/repositories/hall_treaning_repository_impl.dart'
    as _i11;
import 'features/hall_climbing/domain/repositories/climbing_hall_repository.dart'
    as _i5;
import 'features/hall_climbing/domain/repositories/hall_treaning_repository.dart'
    as _i10;
import 'features/hall_climbing/domain/usecases/all_climbing_halls.dart' as _i15;
import 'features/hall_climbing/domain/usecases/get_climbing_hall_routes.dart'
    as _i7;
import 'features/hall_climbing/domain/usecases/new_hall_route.dart' as _i13;
import 'features/hall_climbing/domain/usecases/treanings/all_hall_treanings.dart'
    as _i16;
import 'features/hall_climbing/domain/usecases/treanings/new_hall_attempt_from_route.dart'
    as _i12;
import 'features/hall_climbing/domain/usecases/treanings/new_hall_treaning.dart'
    as _i14;
import 'features/hall_climbing/presentation/bloc/climbing_hall/climbing_hall_cubit.dart'
    as _i17;
import 'features/hall_climbing/presentation/bloc/climbing_halls/climbing_halls_cubit.dart'
    as _i18;
import 'features/hall_climbing/presentation/bloc/current_hall_treaning/current_hall_treaning_cubit.dart'
    as _i19;
import 'features/hall_climbing/presentation/bloc/hall_route/hall_route_cubit.dart'
    as _i20;
import 'features/hall_climbing/presentation/bloc/hall_treanings/hall_treanings_cubit.dart'
    as _i21;
import 'features/hall_climbing/presentation/bloc/home_page/home_page_cubit.dart'
    as _i22; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.ClimbingHallDataSource>(
      () => _i4.MockClimbingHallDataSource());
  gh.lazySingleton<_i5.ClimbingHallRepository>(() =>
      _i6.ClimbingHallRepositoryImpl(
          climbingHallDataSource: get<_i3.ClimbingHallDataSource>()));
  gh.lazySingleton<_i7.GetClimbingHallRoures>(
      () => _i7.GetClimbingHallRoures(get<_i5.ClimbingHallRepository>()));
  gh.lazySingleton<_i8.HallTreaningDataSource>(
      () => _i9.MockHallTreaningDataSource());
  gh.lazySingleton<_i10.HallTreaningRepository>(() =>
      _i11.HallTreaningRepositoryImpl(
          dataSource: get<_i8.HallTreaningDataSource>()));
  gh.lazySingleton<_i12.NewHallAttemptFromRoute>(() =>
      _i12.NewHallAttemptFromRoute(
          hallTreaningRepository: get<_i10.HallTreaningRepository>()));
  gh.lazySingleton<_i13.NewHallRoute>(() => _i13.NewHallRoute(
      climbingHallRepository: get<_i5.ClimbingHallRepository>()));
  gh.lazySingleton<_i14.NewHallTreaning>(() => _i14.NewHallTreaning(
      treaningRepository: get<_i10.HallTreaningRepository>()));
  gh.lazySingleton<_i15.AllClimbingHalls>(
      () => _i15.AllClimbingHalls(get<_i5.ClimbingHallRepository>()));
  gh.lazySingleton<_i16.AllHallTreanings>(
      () => _i16.AllHallTreanings(get<_i10.HallTreaningRepository>()));
  gh.factory<_i17.ClimbingHallCubit>(() => _i17.ClimbingHallCubit(
      getClimbingHallRoures: get<_i7.GetClimbingHallRoures>()));
  gh.factory<_i18.ClimbingHallsCubit>(() =>
      _i18.ClimbingHallsCubit(allClimbingHalls: get<_i15.AllClimbingHalls>()));
  gh.factory<_i19.CurrentHallTreaningCubit>(() => _i19.CurrentHallTreaningCubit(
        newHallAttemptFromRoute: get<_i12.NewHallAttemptFromRoute>(),
        newHallTreaning: get<_i14.NewHallTreaning>(),
      ));
  gh.factory<_i20.HallRouteCubit>(
      () => _i20.HallRouteCubit(get<_i13.NewHallRoute>()));
  gh.factory<_i21.HallTreaningsCubit>(() =>
      _i21.HallTreaningsCubit(allHallTreanings: get<_i16.AllHallTreanings>()));
  gh.factory<_i22.HomePageCubit>(
      () => _i22.HomePageCubit(allClimbingHalls: get<_i15.AllClimbingHalls>()));
  return get;
}
