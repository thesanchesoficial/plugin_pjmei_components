import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class LHM04 extends StatelessWidget {
  const LHM04({
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
      : Container(
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
              PointerDeviceKind.touch,
              PointerDeviceKind.mouse,
            }),
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(
                25,
                25,
                25,
                0,
              ),
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: modules.map<Widget>((module) {
                    if (module.toShortcuts(context).isValid()) {
                      ColorSystem c = module.getColor(context);
                      return Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: RoundCard(
                          title: module.title,
                          color: c,
                          spotlight: module.getSpotlightWidget(context, color: c),
                          child: module.getIcon() ?? const SizedBox(),
                          onPressed: () {
                            module.onTap(context);
                          },
                        ),
                      );
                    } else {
                      return const SizedBox();
                    }
                  }).toList(),
                ),
              ),
            ),
          ),
        );
  }
}
