import 'package:climbing_diary/core/data/climbing_style.dart';
import 'package:climbing_diary/features/hall_climbing/domain/entities/climbing_hall_attempt.dart';
import 'package:climbing_diary/features/hall_climbing/domain/entities/climbing_hall_treaning.dart';
import 'package:climbing_diary/features/hall_climbing/presentation/bloc/current_hall_treaning/current_hall_treaning_cubit.dart';
import 'package:climbing_diary/features/hall_climbing/presentation/widgets/hall_route_category_widget.dart';
import 'package:climbing_diary/features/hall_climbing/presentation/widgets/select_hall_route_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HallTreaningWidget extends StatelessWidget {
  final bool isCurrent;
  final ClimbingHallTreaning treaning;
  const HallTreaningWidget({
    Key? key,
    required this.treaning,
    this.isCurrent = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (isCurrent || treaning.hasLead) ...[
          AttemptsWithStyle(
            attempts: treaning.leadAttempts,
            treaning: treaning,
            isCurrent: isCurrent,
            climbingStyle: ClimbingStyle.topRope,
            child: const Text('Верхняя:'),
          ),
          const SizedBox(
            height: 8,
          ),
        ],
        if (isCurrent || treaning.hasTopRope) ...[
          AttemptsWithStyle(
            attempts: treaning.topRopeAttempts,
            treaning: treaning,
            isCurrent: isCurrent,
            climbingStyle: ClimbingStyle.topRope,
            child: const Text('Нижняя:'),
          ),
          const SizedBox(
            height: 8,
          ),
        ],
        if (isCurrent || treaning.hasBouldering) ...[
          AttemptsWithStyle(
            attempts: treaning.boulderingAttempts,
            treaning: treaning,
            isCurrent: isCurrent,
            climbingStyle: ClimbingStyle.bouldering,
            child: const Text('Болдер:'),
          ),
          const SizedBox(
            height: 8,
          ),
        ],
        isCurrent
            ? ElevatedButton(
                child: const Text('Завершить'),
                onPressed: () {
                  BlocProvider.of<CurrentHallTreaningCubit>(context)
                      .finishCurrentTreaning();
                },
              )
            : ElevatedButton(
                child: const Text('Повторить'),
                onPressed: () {
                  BlocProvider.of<CurrentHallTreaningCubit>(context)
                      .repeatTreaning(treaning: treaning);
                },
              ),
      ],
    );
  }
}

class AttemptsWithStyle extends StatelessWidget {
  final Widget child;
  final List<ClimbingHallAttempt> attempts;
  final ClimbingHallTreaning treaning;
  final bool isCurrent;
  final ClimbingStyle climbingStyle;
  const AttemptsWithStyle({
    required this.child,
    required this.attempts,
    Key? key,
    required this.treaning,
    required this.isCurrent,
    required this.climbingStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        SizedBox(width: 60, child: child),
        ...attempts
            .map((attempt) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: AttemptClickWidget(
                    attempt: attempt,
                  ),
                ))
            .toList(),
        if (isCurrent)
          IconButton(
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (context) {
                  return SelectHallRouteWidget(
                    treaning: treaning,
                    type: climbingStyle.type,
                  );
                },
              );
            },
            icon: Icon(
              Icons.add_box,
              color: Theme.of(context).primaryColor,
            ),
          ),
      ],
    );
  }
}

class AttemptClickWidget extends StatelessWidget {
  final ClimbingHallAttempt attempt;
  const AttemptClickWidget({
    required this.attempt,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showDialog(
          context: context,
          builder: (context) => AlertDialog(
                content: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      HallRouteCategoryWidget.fromAttempt(attempt: attempt)
                    ],
                  ),
                ),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Назад'),
                  ),
                  if (attempt.planed)
                    ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<CurrentHallTreaningCubit>(context)
                            .startAttempt(attempt: attempt);
                        Navigator.of(context).pop();
                      },
                      child: const Text('Старт'),
                    ),
                  if (attempt.finished)
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Удалить'),
                    ),
                ],
              )),
      child: HallRouteCategoryWidget.fromAttempt(attempt: attempt),
    );
  }
}
