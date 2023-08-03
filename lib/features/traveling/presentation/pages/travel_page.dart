import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:my_climbing_trek/core/extentions/date_time_extention.dart';
import 'package:my_climbing_trek/core/widgets/my_cached_network_image.dart';
import 'package:my_climbing_trek/core/widgets/my_modal_bottom_sheet.dart';
import 'package:my_climbing_trek/core/widgets/slidable_data_line_widget.dart';
import 'package:my_climbing_trek/features/traveling/domain/entities/cost_line.dart';
import 'package:my_climbing_trek/features/traveling/domain/entities/feeding_line.dart';
import 'package:my_climbing_trek/features/traveling/domain/entities/travel.dart';
import 'package:my_climbing_trek/features/traveling/presentation/cubit/travel_page/travel_page_cubit.dart';
import 'package:my_climbing_trek/features/traveling/presentation/pages/travel_day_page.dart';
import 'package:my_climbing_trek/features/traveling/presentation/widgets/budget_parameters_widget.dart';
import 'package:my_climbing_trek/features/traveling/presentation/widgets/contact_line_widget.dart';
import 'package:my_climbing_trek/features/traveling/presentation/widgets/cost_parameters_widget.dart';
import 'package:my_climbing_trek/features/traveling/presentation/widgets/insurance_parameters_widget.dart';
import 'package:my_climbing_trek/features/traveling/presentation/widgets/travel_day_widget.dart';
import 'package:my_climbing_trek/features/traveling/presentation/widgets/travel_parameters_widget.dart';
import 'package:my_climbing_trek/service_locator.dart';

class TravelPage extends StatelessWidget {
  final Travel travel;

  const TravelPage({
    required this.travel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabs = [
      'План по дням',
      'Доходы и расходы',
      'Бюджет',
      'Страхование',
      'Питание',
      'Фильтры',
    ];
    return BlocProvider(
      create: (context) => getIt<TravelPageCubit>()..loadData(travel: travel),
      child: BlocBuilder<TravelPageCubit, TravelPageState>(
        builder: (context, state) {
          final color = Theme.of(context).colorScheme.surface;

          final cubit = BlocProvider.of<TravelPageCubit>(context);
          return SafeArea(
            child: Scaffold(
                body: CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 200,
                  stretch: true,
                  floating: true,
                  pinned: true,
                  snap: false,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Hero(
                      tag: 'travel${travel.id}',
                      child: MyCachedNetworkImage(
                          imageUrl: travel.image, fit: BoxFit.cover),
                    ),
                    centerTitle: true,
                    title: InkWell(
                      onTap: () {
                        showMyModalBottomSheet<void>(
                          context: context,
                          heightPersent: 0.8,
                          child: TravelParametersWidget(
                              travel: travel,
                              cubit: BlocProvider.of<TravelPageCubit>(context)),
                        );
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            travel.name,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(offset: Offset.fromDirection(1))
                                ]),
                          ),
                          Text(
                            travel.period,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(offset: Offset.fromDirection(1))
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                  actions: [],
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      SizedBox(
                        height: 40,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: tabs.length,
                          itemBuilder: (context, index) {
                            final bool selected = index == state.tabIndex;
                            return InkWell(
                              onTap: () {
                                BlocProvider.of<TravelPageCubit>(context)
                                    .selectTab(tabIndex: index);
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 2),
                                child: Chip(
                                    label: Text(
                                  tabs[index],
                                  style: TextStyle(
                                      color: selected
                                          ? color
                                          : color.withOpacity(0.5)),
                                )),
                              ),
                            );
                          },
                        ),
                      ),
                      if (state.tabIndex == 0)
                        ...state.days.map(
                          (day) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                                onTap: () async {
                                  await Navigator.of(context)
                                      .push(MaterialPageRoute(
                                    builder: (context) =>
                                        TravelDayPage(day: day),
                                  ));

                                  cubit.loadData(travel: travel);
                                },
                                child: TravelDayWidget(travelDay: day)),
                          ),
                        ),
                      if (state.tabIndex == 1) ...[
                        ...state.costs.map((cost) => SlidableDataLineWidget(
                              onDelete: (context) {
                                cubit.deleteCostLine(
                                    travel: travel, line: cost);
                              },
                              onEdit: (context) {
                                showMyModalBottomSheet<void>(
                                  context: context,
                                  heightPersent: 0.8,
                                  child: CostParametersWidget(
                                    travel: travel,
                                    incomeExpense: cost.incomeExpense,
                                    line: cost,
                                    currencies: travel.currencies,
                                    cubit: cubit,
                                  ),
                                );
                              },
                              child: ListTile(
                                leading:
                                    cost.incomeExpense == IncomeExpense.expense
                                        ? const Icon(
                                            Icons.remove,
                                            color: Colors.red,
                                          )
                                        : const Icon(
                                            Icons.add,
                                            color: Colors.green,
                                          ),
                                title: Row(
                                  children: [
                                    Text(cost.date.dayString()),
                                    const SizedBox(width: 4),
                                    Text(cost.type.name),
                                  ],
                                ),
                                subtitle: Text(cost.description),
                                trailing: Text(
                                  cost.sum.toString(),
                                  style: const TextStyle(fontSize: 20),
                                ),
                              ),
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            OutlinedButton(
                                onPressed: () {
                                  showMyModalBottomSheet<void>(
                                    context: context,
                                    heightPersent: 0.8,
                                    child: CostParametersWidget(
                                      travel: travel,
                                      incomeExpense: IncomeExpense.income,
                                      currencies: travel.currencies,
                                      cubit: cubit,
                                    ),
                                  );
                                },
                                child: const Text('Доход')),
                            OutlinedButton(
                                onPressed: () {
                                  showMyModalBottomSheet<void>(
                                    context: context,
                                    heightPersent: 0.8,
                                    child: CostParametersWidget(
                                      travel: travel,
                                      incomeExpense: IncomeExpense.expense,
                                      currencies: travel.currencies,
                                      cubit: cubit,
                                    ),
                                  );
                                },
                                child: const Text('Расход')),
                          ],
                        ),
                      ],
                      if (state.tabIndex == 2)
                        if (travel.budget != null) ...[
                          Text(
                              '${travel.budget!.amount.toString()} ${travel.budget!.currency.name}'),
                          ...state.budgetLines.map(
                            (line) => Slidable(
                              child: SlidableDataLineWidget(
                                onDelete: (context) {
                                  cubit.deleteBudgetLine(
                                      travel: travel, line: line);
                                },
                                onEdit: (context) {
                                  showMyModalBottomSheet<void>(
                                    context: context,
                                    heightPersent: 0.8,
                                    child: BudgetParametersWidget(
                                      travel: travel,
                                      cubit: cubit,
                                      line: line,
                                    ),
                                  );
                                },
                                child: ListTile(
                                  title: Text(line.type.name),
                                  subtitle: Text(line.description),
                                  trailing: Text(
                                    line.amount.toString(),
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          OutlinedButton(
                              onPressed: () {
                                showMyModalBottomSheet<void>(
                                  context: context,
                                  heightPersent: 0.8,
                                  child: BudgetParametersWidget(
                                    travel: travel,
                                    cubit: cubit,
                                  ),
                                );
                              },
                              child: const Text('Добавить')),
                        ],
                      if (state.tabIndex == 3) ...[
                        ...state.insurances.map((insurance) =>
                            SlidableDataLineWidget(
                              onDelete: (context) {
                                cubit.deleteInsuranceLine(
                                    travel: travel, line: insurance);
                              },
                              onEdit: (context) {
                                showMyModalBottomSheet<void>(
                                  context: context,
                                  heightPersent: 0.8,
                                  child: InsuranceParametersWidget(
                                    cubit: cubit,
                                    travel: travel,
                                    line: insurance,
                                  ),
                                );
                              },
                              child: SizedBox(
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    Text(insurance.insurer),
                                    Text(insurance.description),
                                    SelectableText(insurance.number),
                                    Text(insurance.insurant),
                                    OutlinedButton(
                                        onPressed: () {
                                          showMyModalBottomSheet<void>(
                                            context: context,
                                            heightPersent: 0.6,
                                            child: ContactParametersWidget(
                                              onTap: (
                                                  {required data,
                                                  required description,
                                                  required id,
                                                  required type}) {
                                                cubit
                                                    .editContactForInsuranceLine(
                                                  line: insurance,
                                                  travel: travel,
                                                  contactData: data,
                                                  contactType: type,
                                                  contactDescription:
                                                      description,
                                                  contactId: id,
                                                );
                                              },
                                            ),
                                          );
                                        },
                                        child: const Text('Добавить контакт')),
                                    ...insurance.contacts.map(
                                      (contact) => SlidableDataLineWidget(
                                        onDelete: (context) {
                                          cubit.deleteContactForInsuranceLine(
                                              line: insurance,
                                              travel: travel,
                                              contact: contact);
                                        },
                                        onEdit: (context) {
                                          showMyModalBottomSheet<void>(
                                            context: context,
                                            heightPersent: 0.8,
                                            child: ContactParametersWidget(
                                              line: contact,
                                              onTap: (
                                                  {required data,
                                                  required description,
                                                  required id,
                                                  required type}) {
                                                cubit
                                                    .editContactForInsuranceLine(
                                                  line: insurance,
                                                  travel: travel,
                                                  contactData: data,
                                                  contactType: type,
                                                  contactDescription:
                                                      description,
                                                  contactId: id,
                                                );
                                              },
                                            ),
                                          );
                                        },
                                        child: ContactLineWidget(
                                          contact: contact,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                        OutlinedButton(
                            onPressed: () {
                              showMyModalBottomSheet<void>(
                                context: context,
                                heightPersent: 0.8,
                                child: InsuranceParametersWidget(
                                  cubit: cubit,
                                  travel: travel,
                                ),
                              );
                            },
                            child: const Text('Добавить')),
                      ],
                      if (state.tabIndex == 4 && state.feedingStatistic != null)
                        ...state.feedingStatistic!.statistic.keys.map((meal) =>
                            Column(
                              children: [
                                Text(meal.description),
                                ...state.feedingStatistic!.statistic[meal]!.keys
                                    .map((type) {
                                  final count = state.feedingStatistic!
                                      .statistic[meal]![type]!;
                                  return Text('${type.description}: $count');
                                }),
                                const SizedBox(height: 8)
                              ],
                            )),
                    ],
                  ),
                ),
              ],
            )),
          );
        },
      ),
    );
  }
}
