import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class LGM03 extends StatelessWidget {
  const LGM03({
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
              15,
              25,
              0,
            ),
            runSpacing: 10,
            spacing: 10,
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
              1350
            ],
            itemBuilder: (context, index) {
              if (modules[index].toShortcuts(context).isValid()) {
                ColorSystem c = modules[index].getColor(context);
                return RoundedSquareCard(
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
