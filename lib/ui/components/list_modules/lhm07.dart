import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class LHM07 extends StatelessWidget {
  const LHM07({
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
        : Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: IntrinsicHeight(
                  child: ScrollConfiguration(
                    behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
                      PointerDeviceKind.touch,
                      PointerDeviceKind.mouse,
                    }),
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.fromLTRB(
                        25,
                        25,
                        15,
                        0,
                      ),
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                        children: modules.map<Widget>((module) {
                          if (module.toDiscover(context).isValid()) {
                            ColorSystem c = module.getColor(context);
                            return DiscoverMoreCard(
                              color: c,
                              spotlight: module.getSpotlightWidget(context, color: c),
                              description: module.description,
                              title: module.title,
                              labelTextButton: module.params['labelText'],
                              onPressed: () async {
                                await module.onTap(context);
                              },
                              leading: module.getIcon(),
                              extra: module.getImage(),
                            );
                          } else {
                            return const SizedBox();
                          }
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}
