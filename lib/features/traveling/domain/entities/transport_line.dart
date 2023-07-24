import 'package:flutter/material.dart';
import 'package:my_climbing_trek/features/traveling/domain/entities/transport_type.dart';
import 'package:my_climbing_trek/features/traveling/domain/entities/travel_day_line.dart';

class TransportLine extends TravelDayLine {
  final TransportType type;
  final DateTime? finish;

  @override
  IconData? get icon => type.icon;

  TransportLine(
      {required this.type,
      required super.name,
      required super.description,
      required super.date,
      super.contacts,
      this.finish});
}
