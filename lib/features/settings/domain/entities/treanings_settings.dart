import 'package:equatable/equatable.dart';

class TreaningsSettings extends Equatable {
  final bool useGymTreanings;
  final bool useCardioTreanings;
  final bool useIceTreanings;
  final bool useStrengthTraining;
  final bool useRockTraining;
  final bool useMountaineering;

  const TreaningsSettings({
    required this.useGymTreanings,
    required this.useCardioTreanings,
    required this.useIceTreanings,
    required this.useStrengthTraining,
    required this.useRockTraining,
    bool? useMountaineering,
  }) : useMountaineering = useMountaineering ?? true;

  TreaningsSettings copyWith({
    bool? useGymTreanings,
    bool? useCardioTreanings,
    bool? useIceTreanings,
    bool? useStrengthTraining,
    bool? useRockTraining,
    bool? useMountaineering,
  }) {
    return TreaningsSettings(
      useGymTreanings: useGymTreanings ?? this.useGymTreanings,
      useCardioTreanings: useCardioTreanings ?? this.useCardioTreanings,
      useIceTreanings: useIceTreanings ?? this.useIceTreanings,
      useStrengthTraining: useStrengthTraining ?? this.useStrengthTraining,
      useRockTraining: useRockTraining ?? this.useRockTraining,
      useMountaineering: useMountaineering ?? this.useMountaineering,
    );
  }

  factory TreaningsSettings.initial() => const TreaningsSettings(
        useGymTreanings: true,
        useCardioTreanings: true,
        useIceTreanings: true,
        useStrengthTraining: true,
        useRockTraining: true,
        useMountaineering: true,
      );

  @override
  List<Object?> get props => [
        useCardioTreanings,
        useGymTreanings,
        useIceTreanings,
        useRockTraining,
        useStrengthTraining,
        useMountaineering,
      ];
}
