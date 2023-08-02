import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class LGM04 extends StatelessWidget {
  const LGM04({
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
            runSpacing: 25,
            spacing: 25,
            itemCount: modules.length,
            numbersInRowAccordingToWidgth: [330, 600, 900, 1200, 1650],
            itemBuilder: (context, index) {
              if (modules[index].toShortcuts(context).isValid()) {
                final module = modules[index];
                return Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Visibility(
                        visible: (!(module.image?.containsValue('ICON') ?? false)),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.circular(15)),
                          child: AspectRatio(
                            aspectRatio: 5 / 3,
                            child: Container(
                              child: module.toDiscover(context).image,
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: Valid.text(module.title),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: OwText(
                            '${module.title}',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                      ),
                      Visibility(
                        visible: Valid.text(module.description),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: OwText(
                            '${module.description}',
                            maxLines: 3,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              } else {
                return const SizedBox();
              }
            },
          );
  }
}
