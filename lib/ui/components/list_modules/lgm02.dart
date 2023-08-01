import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class LGM02 extends StatelessWidget {
  const LGM02({
    Key? key,
    this.list,
  }) : super(key: key);
  final List<ModulePjmei>? list;

  @override
  Widget build(BuildContext context) {
    final List<ModulePjmei> modules = (list ?? []);
    modules.sort((a, b) => (a.index).compareTo((b.index)));
    return modules.length == 0
        ? const SizedBox()
        : OwGrid.builder(
            padding: const EdgeInsets.fromLTRB(
              25,
              25,
              25,
              0,
            ),
            runSpacing: 25,
            itemCount: modules.length,
            numbersInRowAccordingToWidgth: [
              150,
              300,
              450,
              600,
              750,
              900,
              1050,
              1200,
              1350,
              1500,
              1900,
              2100,
              2300,
            ],
            itemBuilder: (context, index) {
              if (modules[index].toShortcuts(context).isValid()) {
                ColorSystem c = modules[index].getColor(context);
                return RoundCard(
                  title: modules[index].title,
                  color: c,
                  spotlight: modules[index].getSpotlightWidget(context, color: c),
                  child: modules[index].toDiscover(context).image ?? const SizedBox(),
                  onPressed: () {
                    modules[index].onTap(context);
                  },
                );
              } else {
                return const SizedBox();
              }
            },
          );
  }
}
