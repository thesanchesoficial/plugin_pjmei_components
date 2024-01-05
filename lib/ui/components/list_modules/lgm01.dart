import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../../../features/modules/domain/entity/pjmei_module_entity.dart';

class LGM01 extends StatelessWidget {
  const LGM01({
    Key? key,
    this.list,
  }) : super(key: key);
  final List<ModulePjmei>? list;

  @override
  Widget build(BuildContext context) {
    final List<ModulePjmei> modules = (list ?? []);
    modules.sort((a, b) => (a.index).compareTo(b.index));
    return modules.length == 0
      ? const SizedBox()
      : OwGrid.builder(
          itemCount: modules.length,
          runSpacing: 20,
          spacing: 25,
          numbersInRowAccordingToWidgth: [825, 1650, 2100],
          padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
          itemBuilder: (context, index) {
            if (modules[index].toShortcuts(context).isValid()) {
              ColorSystem c = modules[index].getColor(context);
              final ColorsByToken colors = ColorsAdapter.getByType(c);
              return RoundedRectangularCard(
                title: modules[index].title,
                color: c,
                spotlight: modules[index].getSpotlightWidget(context, color: c),
                description: modules[index].description,
                leading: modules[index].toDiscover(context, color: colors.onBackground).image,
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
