import 'package:flutter/material.dart';
import 'package:my_climbing_trek/features/traveling/domain/entities/travel_day.dart';
import 'package:my_climbing_trek/features/traveling/presentation/widgets/feeding_lines_widget.dart';
import 'package:my_climbing_trek/features/traveling/presentation/widgets/travel_day_lines_widget.dart';

class TravelDayWidget extends StatelessWidget {
  final TravelDay travelDay;
  const TravelDayWidget({required this.travelDay, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('День ${travelDay.number}: '),
            const SizedBox(width: 4),
            Text(travelDay.dateString),
          ],
        ),
        TravelDayLinesWidget(
          stayLines: travelDay.stayLines,
          transportLines: travelDay.transportLines,
        ),
        FeedingLinesWidget(travelDay: travelDay),
      ],
    );
  }
}
