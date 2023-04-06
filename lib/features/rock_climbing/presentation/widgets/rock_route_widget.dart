import 'package:flutter/material.dart';
import 'package:my_climbing_trek/features/rock_climbing/domain/entities/rock_route.dart';
import 'package:my_climbing_trek/features/rock_climbing/presentation/widgets/rock_category_widget.dart';

class RockRouteWidget extends StatelessWidget {
  final RockRoute route;
  const RockRouteWidget({required this.route, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(8),
        child: ListTile(
          leading: Stack(
            fit: StackFit.loose,
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              RockCategoryWidget(category: route.category),
              if (route.number != null)
                Positioned(
                  bottom: 3,
                  child: Text(
                    route.number.toString(),
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
            ],
          ),
          title: Text(route.name),
          subtitle:
              Text('${route.length} м., шлямбуров ${route.boltCount} шт.'),
        ));
  }
}
