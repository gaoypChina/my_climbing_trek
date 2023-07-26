import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:my_climbing_trek/core/data/region.dart';
import 'package:my_climbing_trek/core/failures/failure.dart';
import 'package:my_climbing_trek/features/traveling/data/datasources/travel_local_datasource.dart';
import 'package:my_climbing_trek/features/traveling/domain/entities/contact_line.dart';
import 'package:my_climbing_trek/features/traveling/domain/entities/contact_type.dart';
import 'package:my_climbing_trek/features/traveling/domain/entities/cost_line.dart';
import 'package:my_climbing_trek/features/traveling/domain/entities/cost_type.dart';
import 'package:my_climbing_trek/features/traveling/domain/entities/currency.dart';
import 'package:my_climbing_trek/features/traveling/domain/entities/insurance_line.dart';
import 'package:my_climbing_trek/features/traveling/domain/entities/travel.dart';
import 'package:my_climbing_trek/features/traveling/domain/entities/travel_budget.dart';
import 'package:my_climbing_trek/features/traveling/domain/entities/travel_budget_line.dart';

@LazySingleton(as: TravelLocalDatasource)
class MockTravelLocalDatasource implements TravelLocalDatasource {
  final List<Travel> _list = [
    Travel(
      name: 'Ала-Арча 2023',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1axUAphSxg3bOqphsxHDN8Ohgp-E5JM_12w&usqp=CAU',
      date: DateTime(2023, 5, 1),
      start: DateTime(2023, 5, 1),
      finish: DateTime(2023, 5, 12),
      currencies: [
        Currency.rub,
        Currency.kgs,
        Currency.usd,
      ],
      regions: [
        Region(
          name: 'Ала-Арча',
          state: 'Киргизия',
          id: 'archa',
          image:
              'https://biomehanika-ekb.ru/wp-content/uploads/2016/02/p0608_06-150x150.jpg',
        ),
      ],
      budget: TravelBudget(
        currency: Currency.rub,
        amount: 100000,
        lines: [
          TravelBudgetLine(type: CostType.organization, amount: 35000),
          TravelBudgetLine(type: CostType.transport, amount: 30000),
        ],
      ),
      costs: [
        CostLine(
          date: DateTime.now(),
          type: CostType.transport,
          currency: Currency.rub,
          incomeExpense: IncomeExpense.expense,
          sum: 35000,
        ),
        CostLine(
          date: DateTime.now(),
          type: CostType.transport,
          currency: Currency.rub,
          incomeExpense: IncomeExpense.income,
          sum: 5000,
        ),
      ],
      insurances: [
        InsuranceLine(
          insurer: 'Согласие',
          description: 'на весь период, с эвакуацией',
          insurant: 'Андрей',
          number: 'RG324 N3242',
          contacts: [
            ContactLine(
              type: ContactType.phone,
              data: '+7 495 333 22 11',
              description: 'звонок бесплатный',
            ),
          ],
        )
      ],
    ),
    Travel(
      name: 'Хибины 2023',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1axUAphSxg3bOqphsxHDN8Ohgp-E5JM_12w&usqp=CAU',
      date: DateTime(2023, 2, 22),
      start: DateTime(2023, 2, 22),
      finish: DateTime(2023, 2, 28),
      regions: [],
    ),
    Travel(
      name: 'Узункол 2023',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1axUAphSxg3bOqphsxHDN8Ohgp-E5JM_12w&usqp=CAU',
      date: DateTime(2023, 7, 16),
      start: DateTime(2023, 7, 16),
      finish: DateTime(2023, 7, 31),
      regions: [],
    ),
  ];
  @override
  Future<Either<Failure, Travel?>> currentTravel() async {
    return Right(_list.first);
  }

  @override
  Future<Either<Failure, Unit>> deleteTravel({required Travel travel}) async {
    return const Right(unit);
  }

  @override
  Future<Either<Failure, List<Travel>>> getTreanings() async {
    return Right(_list);
  }

  @override
  Future<Either<Failure, Unit>> saveTravel({required Travel travel}) async {
    return const Right(unit);
  }

  @override
  Future<Either<Failure, List<Travel>>> getPlanedTravels() async {
    return Right(_list);
  }

  @override
  Future<Either<Failure, List<Travel>>> getTravels() async {
    return Right(_list);
  }
}
