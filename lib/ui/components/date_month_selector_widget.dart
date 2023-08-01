// ignore_for_file: must_be_immutable

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/ui/components/card_atalhos.dart';
import 'package:plugin_pjmei_components/ui/components/widgets/ow_text.dart';

class DateMonthSelector extends StatefulWidget {
  DateMonthSelector({
    Key? key,
    required this.initialTime,
    required this.onChange,
    this.anual = false,
    this.showMonthSelector = true,
    this.showCurrentMonth = false,
    required this.onClickYear,
  }) : super(key: key);
  DateTime initialTime;
  bool anual;
  bool showMonthSelector;
  bool showCurrentMonth;
  final Function onChange;
  Function onClickYear;

  @override
  State<DateMonthSelector> createState() => _DateMonthSelectorState();
}

class _DateMonthSelectorState extends State<DateMonthSelector> {
  List<String> months = [
    'Janeiro',
    'Fevereiro',
    'Março',
    'Abril',
    'Maio',
    'Junho',
    'Julho',
    'Agosto',
    'Setembro',
    'Outubro',
    'Novembro',
    'Dezembro'
  ];

  bool showMonths = false;

  final int yearLimit = 10;

  @override
  void didUpdateWidget(old) {
    super.didUpdateWidget(old);
    // showMonths = !showMonths;
    showMonths = widget.showCurrentMonth;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              if ((widget.anual || showMonths) &&
                  (DateTime.now().year - (widget.initialTime.year - 1)) <=
                      10) {
                widget.initialTime = DateTime(
                    widget.initialTime.year - 1, widget.initialTime.month);

                if (widget.anual) widget.onChange(widget.initialTime);
              } else if (!showMonths &&
                  (DateTime.now().year - (widget.initialTime.year - 1)) <=
                      10) {
                widget.initialTime = DateTime(
                    widget.initialTime.year, widget.initialTime.month - 1);
                widget.onChange(widget.initialTime);
              }
              setState(() {});
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 22,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          (showMonths || widget.anual)
              ? TextButton(
                  onPressed: () {
                    if (!widget.showMonthSelector && !widget.anual) {
                      widget.onClickYear(showMonths);
                    }
                    setState(() {
                      showMonths = !showMonths;
                    });
                  },
                  child: OwText(
                    widget.initialTime.year.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.normal),
                  ),
                )
              : InkWell(
                  onTap: () {
                    if (!widget.showMonthSelector && !widget.anual) {
                      widget.onClickYear(showMonths);
                    }
                    setState(() {
                      showMonths = !showMonths;
                    });
                  },
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  child: Container(
                      constraints: BoxConstraints(
                        minWidth: MediaQuery.sizeOf(context).width / 20,
                      ),
                      padding: const EdgeInsets.all(8),
                      // margin: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context).colorScheme.primary,
                              width: 2),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                      child: Row(
                        children: [
                          OwText(
                            '${months[widget.initialTime.month - 1]} ',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.primary,
                                  // fontWeight: FontWeight.normal,
                                ),
                          ),
                          OwText(
                            widget.initialTime.year.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ],
                      )),
                ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {
              if ((widget.anual || showMonths) &&
                  (DateTime.now().year - (widget.initialTime.year + 1)) >=
                      -10) {
                widget.initialTime = DateTime(
                    widget.initialTime.year + 1, widget.initialTime.month);

                if (widget.anual) widget.onChange(widget.initialTime);
              } else if (!showMonths &&
                  (DateTime.now().year - (widget.initialTime.year + 1)) >=
                      -10) {
                widget.initialTime = DateTime(
                    widget.initialTime.year, widget.initialTime.month + 1);
                widget.onChange(widget.initialTime);
              }
              setState(() {});
            },
            icon: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 22,
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 2,
      ),
      if (showMonths && !widget.anual && widget.showMonthSelector)
        ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
          }),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: months
                  .map((month) => Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: CardAtalhos(
                          title: month.substring(0, 3).toUpperCase(),
                          selecionado: widget.initialTime.month ==
                              (months.indexOf(month) + 1),
                          onPressed: () {
                            widget.initialTime = DateTime(
                                widget.initialTime.year,
                                months.indexOf(month) + 1);
                            widget.onChange(widget.initialTime);
                            setState(() {
                              showMonths = false;
                            });
                          },
                        ),
                      ))
                  .toList(),
            ),
          ),
        )
    ]);
  }
}
