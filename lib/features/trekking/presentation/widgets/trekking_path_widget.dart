import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_climbing_trek/core/extentions/date_time_extention.dart';
import 'package:my_climbing_trek/features/trekking/domain/entities/trekking_path.dart';
import 'package:my_climbing_trek/features/trekking/presentation/bloc/trekking/trekking_cubit.dart';
import 'package:my_climbing_trek/features/trekking/presentation/pages/trek_page.dart';
import 'package:my_climbing_trek/features/trekking/presentation/pages/trekking_region_page.dart';

class TrekkingPathWidget extends StatelessWidget {
  final TrekkingPath path;
  final bool editing;
  const TrekkingPathWidget({required this.path, this.editing = false, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = BlocProvider.of<TrekkingCubit>(context).state;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 0,
        borderRadius: BorderRadius.circular(8),
        child: Column(
          children: [
            Row(
              children: [
                Text(path.dateString),
                const Spacer(),
                InkWell(
                  onTap: () {
                    if (path.trek != null) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TrekPage(
                                region: path.region,
                                trek: path.trek!,
                              )));
                    } else {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TrekkingRegionPage(
                                region: path.region,
                              )));
                    }
                  },
                  child: path.trek != null
                      ? Text(path.trek!.name)
                      : Text(path.region.name),
                ),
                IconButton(
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => IceTreaningPage(
                    //           treaning: treaning,
                    //         )));
                  },
                  icon: const Icon(
                    Icons.share,
                    size: 16,
                  ),
                ),
              ],
            ),
            ...path.events.map(
              (event) => Row(
                children: [
                  Text(event.time.timeString()),
                  const SizedBox(width: 4),
                  if (event.point != null) ...[
                    Text(event.point!.name),
                    const SizedBox(width: 4),
                  ],
                  Text(event.type.name),
                ],
              ),
            ),
            const SizedBox(height: 8),
            if (state.currentPoint != null) ...[
              const Text('Текущее местоположение:'),
              Text(state.currentPoint!.name),
              const SizedBox(height: 4),
            ],
            if (state.currentEvent?.isMooving == true &&
                path.currentSection != null) ...[
              const Text('Пункт назначения:'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                      value: state.currentPoint == path.currentSection!.finish,
                      onChanged: (value) {
                        if (state.currentPoint == null) {
                          BlocProvider.of<TrekkingCubit>(context)
                              .setCurrentPoint(
                                  point: path.currentSection!.finish);
                        } else {
                          BlocProvider.of<TrekkingCubit>(context)
                              .setCurrentPoint(point: null);
                        }
                      }),
                  const SizedBox(width: 4),
                  Text(path.currentSection!.finish.name),
                  const SizedBox(width: 4),
                  Text(
                      '${path.currentSection!.length} км ${path.currentSection!.climb}'),
                ],
              ),
              const SizedBox(height: 8),
            ],
            if (!path.finished)
              Wrap(
                children: path.actions
                    .map((type) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: InkWell(
                              onTap: () {
                                BlocProvider.of<TrekkingCubit>(context)
                                    .addEvent(
                                  path: path,
                                  type: type,
                                  point: state.currentPoint,
                                );
                              },
                              child: Chip(label: Text(type.name))),
                        ))
                    .toList(),
              ),
            const SizedBox(height: 8),
            Wrap(
              children: [
                if (path.length > 0) Text('Пройдено: ${path.length} км.'),
                if (path.climbUp > 0) Text('Набор высоты: ${path.climbUp} м.'),
                if (path.climbDown > 0)
                  Text('Сброс высоты: ${path.climbDown} м.'),
                if (path.time > 0)
                  Text('Время в пути: ${path.time.toStringAsFixed(2)} ч.'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
