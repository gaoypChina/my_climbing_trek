import 'package:my_climbing_trek/core/data/climbing_category.dart';
import 'package:my_climbing_trek/features/hall_climbing/domain/entities/route_color.dart';
import 'package:my_climbing_trek/features/hall_climbing/presentation/widgets/hall_route_category_widget.dart';
import 'package:flutter/material.dart';

class SelectCategoryWidget extends StatelessWidget {
  final RouteColor? color;
  final ClimbingCategory? currentCategory;
  final void Function(ClimbingCategory)? onTap;

  const SelectCategoryWidget(
      {super.key, this.color, this.currentCategory, this.onTap});

  @override
  Widget build(BuildContext context) {
    const categories = ClimbingCategory.hallValues;
    return SizedBox(
        height: 64,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: categories
                .map((category) => GestureDetector(
                      onTap: onTap == null ? null : () => onTap!(category),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: HallRouteCategoryWidget(
                          category: category,
                          color: color?.materialColor,
                          planed: category != currentCategory,
                        ),
                      ),
                    ))
                .toList(),
          ),
        ));
  }
}
