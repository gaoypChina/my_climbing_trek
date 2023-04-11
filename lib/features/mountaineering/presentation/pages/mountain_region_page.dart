import 'package:my_climbing_trek/core/data/region.dart';
import 'package:my_climbing_trek/core/widgets/my_cached_network_image.dart';
import 'package:my_climbing_trek/features/mountaineering/presentation/bloc/mountains/mountains_cubit.dart';
import 'package:my_climbing_trek/features/mountaineering/presentation/pages/mountain_page.dart';
import 'package:my_climbing_trek/features/mountaineering/presentation/widgets/mountain_widget.dart';
import 'package:my_climbing_trek/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MountainRegionPage extends StatelessWidget {
  final Region region;

  const MountainRegionPage({
    required this.region,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 160,
              stretch: true,
              floating: true,
              pinned: true,
              snap: false,
              flexibleSpace: FlexibleSpaceBar(
                background: MyCachedNetworkImage(
                  imageUrl: region.image!,
                  fit: BoxFit.cover,
                ),
                centerTitle: true,
                title: Text(
                  region.name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      shadows: [Shadow(offset: Offset.fromDirection(1))]),
                ),
              ),
            ),
            BlocProvider(
              create: (context) =>
                  getIt<MountainsCubit>()..loadData(region: region),
              child: BlocBuilder<MountainsCubit, MountainsState>(
                builder: (context, state) {
                  return state.maybeMap(
                    data: (dataState) => SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: dataState.mountains.length,
                        (context, index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => MountainPage(
                                        mountain: dataState.mountains[index],
                                      )));
                            },
                            child: MountainWidget(
                              mountain: dataState.mountains[index],
                            ),
                          ),
                        ),
                      ),
                    ),
                    orElse: () => SliverList(
                      delegate: SliverChildListDelegate(
                          [const Center(child: Text('Нет вершин'))]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
