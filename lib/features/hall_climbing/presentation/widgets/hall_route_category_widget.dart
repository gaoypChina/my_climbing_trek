import 'package:climbing_diary/core/data/ascent_type.dart';
import 'package:climbing_diary/core/data/climbing_category.dart';
import 'package:climbing_diary/features/hall_climbing/domain/entities/climbing_hall_attempt.dart';
import 'package:climbing_diary/features/settings/presentation/cubit/settings_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const double radius = 24;

class HallRouteCategoryWidget extends StatelessWidget {
  final ClimbingCategory category;
  final Color? color;
  final bool planed;
  final ClimbingHallAttempt? _attempt;

  const HallRouteCategoryWidget({
    Key? key,
    required this.category,
    this.color,
    this.planed = false,
  })  : _attempt = null,
        super(key: key);

  HallRouteCategoryWidget.fromAttempt({
    required ClimbingHallAttempt attempt,
    super.key,
  })  : _attempt = attempt,
        category = attempt.routeCategory,
        color = attempt.routeColor,
        planed = attempt.planed;

  @override
  Widget build(BuildContext context) {
    final double opacity = planed ? 0.5 : 1;

    if (color == null) {
      return Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(24),
        child: _AttemptBadgets(
          attempt: _attempt,
          child: CircleAvatar(
            backgroundColor: Colors.red.withOpacity(opacity),
            radius: radius,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: radius * 0.85,
              child: BlocBuilder<SettingsCubit, SettingsState>(
                buildWhen: (previous, current) =>
                    previous.hallCategoryType != current.hallCategoryType,
                builder: (context, state) {
                  final String title = category.title(state.hallCategoryType);
                  return Text(
                    title,
                    style: TextStyle(
                        color: Colors.black.withOpacity(opacity),
                        fontWeight: FontWeight.bold,
                        fontSize: category.fontSize(title)),
                  );
                },
              ),
            ),
          ),
        ),
      );
    } else {
      final Color textColor;
      if (color!.value == Colors.white.value) {
        textColor = Colors.black;
      } else {
        textColor = Colors.white;
      }
      return Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(24),
        child: _AttemptBadgets(
          attempt: _attempt,
          child: CircleAvatar(
            backgroundColor: color?.withOpacity(opacity),
            radius: radius,
            child: BlocBuilder<SettingsCubit, SettingsState>(
              buildWhen: (previous, current) =>
                  previous.hallCategoryType != current.hallCategoryType,
              builder: (context, state) {
                final String title = category.title(state.hallCategoryType);
                return Text(
                  title,
                  style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: category.fontSize(title)),
                );
              },
            ),
          ),
        ),
      );
    }
  }
}

class _AttemptBadgets extends StatelessWidget {
  final ClimbingHallAttempt? attempt;
  final Widget child;

  const _AttemptBadgets({Key? key, required this.attempt, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (attempt == null) return child;

    late Widget topRight;

    if (attempt?.ascentType == AscentType.redPoint) {
      topRight = const _AttemptBudget(color: Colors.red, child: SizedBox());
    } else if (attempt?.ascentType == AscentType.onsite) {
      topRight = const _AttemptBudget(color: Colors.amber, child: SizedBox());
    } else if (attempt?.fail == true) {
      topRight = const _AttemptBudget(
          color: Colors.red,
          child: Icon(
            Icons.close,
            size: 12,
            color: Colors.white,
          ));
    } else {
      topRight = const SizedBox();
    }

    final fallCount = attempt?.fallCount ?? 0;
    final suspensionCount = attempt?.suspensionCount ?? 0;

    const badgetTextStyle =
        TextStyle(color: Colors.white, fontWeight: FontWeight.bold);

    final Widget bottomRight = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (fallCount > 0)
          _AttemptBudget(
            color: Colors.red,
            child: Text(
              fallCount.toString(),
              textAlign: TextAlign.center,
              style: badgetTextStyle,
            ),
          ),
        if (suspensionCount > 0)
          _AttemptBudget(
            color: Colors.orange,
            child: Text(
              suspensionCount.toString(),
              textAlign: TextAlign.center,
              style: badgetTextStyle,
            ),
          ),
      ],
    );

    return SizedBox(
      height: radius * 2,
      width: radius * 2,
      child: Stack(
        children: [
          child,
          Align(
            alignment: Alignment.topRight,
            child: topRight,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: bottomRight,
          )
        ],
      ),
    );
  }
}

class _AttemptBudget extends StatelessWidget {
  final Color color;
  final Widget child;
  const _AttemptBudget({required this.color, required this.child, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16,
      width: 16,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
      child: child,
    );
  }
}
