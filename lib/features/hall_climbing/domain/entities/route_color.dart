import 'package:flutter/material.dart';

class RouteColor {
  final String name;
  final int code;

  MaterialColor get materialColor => MaterialColor(code, const {});

  const RouteColor({
    required this.name,
    required this.code,
  });

  final color = Colors.amber;

  static const RouteColor red = RouteColor(name: 'Красный', code: 0xFFF40000);
  static const RouteColor yellow = RouteColor(name: 'Желтый', code: 0xFFCDDC39);
  static const RouteColor blue = RouteColor(name: 'Синий', code: 0xFF0000F3);
  static const RouteColor green = RouteColor(name: 'Зеленый', code: 0xFF009900);
  static const RouteColor black = RouteColor(name: 'Черный', code: 0xFF000000);
  static const RouteColor orange =
      RouteColor(name: 'Оранжевый', code: 0xFFFF9800);
  static const RouteColor white = RouteColor(name: 'Белый', code: 0xFFFFFFFF);
  static const RouteColor purple =
      RouteColor(name: 'Фиолетовый', code: 0xFF9C27B0);
  static const RouteColor brown =
      RouteColor(name: 'Коричневый', code: 0xFF795548);
  static const RouteColor sendy =
      RouteColor(name: 'Песочный', code: 0xFFFFC107);
  static const RouteColor pink = RouteColor(name: 'Розовый', code: 0xFFE91E63);
  static const RouteColor lime =
      RouteColor(name: 'Светло-зеленый', code: 0xFF8BC34A);
  static const RouteColor wave =
      RouteColor(name: 'Бирюзовый', code: 0xFF009688);

  static const List<RouteColor> values = [
    red,
    yellow,
    blue,
    green,
    black,
    orange,
    white,
    purple,
    brown,
    sendy,
    pink,
    lime,
    wave,
  ];

  static List<MaterialColor> get materialColors =>
      values.map((e) => e.materialColor).toList();

  static Map<MaterialColor, RouteColor> get colorsMap {
    Map<MaterialColor, RouteColor> result = {};
    for (var color in values) {
      result[color.materialColor] = color;
    }
    return result;
  }
}
