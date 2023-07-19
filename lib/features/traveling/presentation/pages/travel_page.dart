import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_climbing_trek/core/widgets/my_cached_network_image.dart';
import 'package:my_climbing_trek/core/widgets/my_modal_bottom_sheet.dart';
import 'package:my_climbing_trek/features/traveling/domain/entities/cost_line.dart';
import 'package:my_climbing_trek/features/traveling/domain/entities/travel.dart';
import 'package:my_climbing_trek/features/traveling/presentation/cubit/travel_page/travel_page_cubit.dart';
import 'package:my_climbing_trek/features/traveling/presentation/widgets/travel_day_parameters_widget.dart';
import 'package:my_climbing_trek/features/traveling/presentation/widgets/travel_day_widget.dart';
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
                title: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      travel.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          shadows: [Shadow(offset: Offset.fromDirection(1))]),
                    ),
                    Text(
                      travel.period,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          shadows: [Shadow(offset: Offset.fromDirection(1))]),
                    ),
                  ],
                ),
              ),
            ),
            BlocProvider(
              create: (context) => getIt<TravelPageCubit>(),
              child: BlocBuilder<TravelPageCubit, TravelPageState>(
                builder: (context, state) {
                  final color = Theme.of(context).colorScheme.surface;
                  return SliverList(
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
                                child: Chip(
                                    label: Text(
                                  tabs[index],
                                  style: TextStyle(
                                      color: selected
                                          ? color
                                          : color.withOpacity(0.5)),
                                )),
                              );
                            },
                          ),
                        ),
                        if (state.tabIndex == 0)
                          ...travel.travelDays.map(
                            (day) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                  onTap: () {
                                    showMyModalBottomSheet<void>(
                                      context: context,
                                      heightPersent: 0.6,
                                      child:
                                          TravelDayParametersWidget(day: day),
                                    );
                                  },
                                  child: TravelDayWidget(travelDay: day)),
                            ),
                          ),
                        if (state.tabIndex == 1)
                          ...travel.costs.map(
                            (cost) => ListTile(
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
                              title: Text(cost.type.name),
                              subtitle: Text(cost.description),
                              trailing: Text(
                                cost.sum.toString(),
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        if (state.tabIndex == 3)
                          ...travel.insurances.map((insurance) => Column(
                                children: [
                                  Text(insurance.insurer),
                                  Text(insurance.description),
                                  SelectableText(insurance.number),
                                  Text(insurance.insurant),
                                  ...insurance.contacts
                                      .map((contact) => ListTile(
                                            title: SelectableText(contact.data),
                                            subtitle: Text(contact.description),
                                            trailing: IconButton(
                                                icon: Icon(
                                                  Icons.phone,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .surface,
                                                ),
                                                onPressed: () {}),
                                          ))
                                ],
                              )),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
