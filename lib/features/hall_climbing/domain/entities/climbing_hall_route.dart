import 'package:my_climbing_trek/core/data/climbing_route.dart';
import 'package:my_climbing_trek/features/hall_climbing/domain/entities/route_color.dart';

class ClimbingHallRoute extends ClimbingRoute {
  int? id = null;

  final RouteColor color;
  final int sectorNumber;
  bool archive;
  final bool autoBelay;
  ClimbingHallRoute({
    required super.category,
    required this.color,
    required super.type,
    this.sectorNumber = 0,
    this.autoBelay = false,
    this.archive = false,
    this.id,
  });
}
