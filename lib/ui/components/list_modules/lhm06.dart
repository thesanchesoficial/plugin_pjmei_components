import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class LHM06 extends StatelessWidget {
  const LHM06({
    Key? key,
    this.list,
  }) : super(key: key);
  final List<ModulePjmei>? list;

  @override
  Widget build(BuildContext context) {
    final List<ModulePjmei> modules = (list ?? []);
    modules.sort((a, b) => (a.index ).compareTo(b.index));
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
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: VerticalPictureCard(
                                color: c,
                                title: module.title,
                                link: module.image?['value'],
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
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          );
  }
}
