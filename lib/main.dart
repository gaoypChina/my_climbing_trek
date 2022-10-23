import 'dart:ui';

import 'package:climbing_diary/features/hall_climbing/presentation/bloc/current_hall_treaning/current_hall_treaning_cubit.dart';
import 'package:climbing_diary/features/hall_climbing/presentation/bloc/home_page/home_page_cubit.dart';
import 'package:climbing_diary/features/hall_climbing/presentation/pages/home_page.dart';
import 'package:climbing_diary/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      scrollBehavior: MyCustomScrollBehavior(),
      home: MultiBlocProvider(providers: [
        BlocProvider<HomePageCubit>(
          create: (context) => getIt<HomePageCubit>()..loadData(),
        ),
        BlocProvider<CurrentHallTreaningCubit>(
          create: (context) => getIt<CurrentHallTreaningCubit>()..loadData(),
        ),
      ], child: const HomePage()),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
