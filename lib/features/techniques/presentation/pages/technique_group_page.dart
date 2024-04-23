import 'package:my_climbing_trek/core/widgets/my_sliver_app_bar_widget.dart';
import 'package:my_climbing_trek/features/techniques/domain/entities/technique_group.dart';
import 'package:my_climbing_trek/features/techniques/presentation/bloc/technique_treaning/technique_treaning_cubit.dart';
import 'package:my_climbing_trek/features/techniques/presentation/bloc/techniques/techniques_cubit.dart';
import 'package:my_climbing_trek/features/techniques/presentation/widgets/technique_widget.dart';
import 'package:my_climbing_trek/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TechniqueGroupPage extends StatelessWidget {
  final TechniqueGroup group;

  const TechniqueGroupPage({
    required this.group,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            MySliverAppBarWidget(
              heroTag: 'TechniqueGroup${group.id}',
              title: group.name,
              imageUrl: group.image,
            ),
            BlocProvider(
              create: (context) =>
                  getIt<TechniquesCubit>()..loadData(group: group),
              child: BlocBuilder<TechniquesCubit, TechniquesState>(
                builder: (context, state) {
                  return state.maybeMap(
                    data: (dataState) => SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: dataState.techniques.length,
                        (context, index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TechniqueWidget(
                            technique: dataState.techniques[index],
                            selectMode: true,
                            onPressed: (options) {
                              BlocProvider.of<TechniqueTreaningCubit>(context)
                                  .addTechniqueGroup(
                                      group: group,
                                      technique: dataState.techniques[index],
                                      options: options);
                              Navigator.of(context).pop();
                            },
                          ),
                        ),
                      ),
                    ),
                    orElse: () => SliverList(
                      delegate: SliverChildListDelegate(
                          [const Center(child: Text('Нет техник'))]),
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
