import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../../../features/modules/domain/entity/pjmei_module_entity.dart';

class LHM01 extends StatelessWidget {
  const LHM01({
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
            width: MediaQuery.sizeOf(context).width,
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
                child: IntrinsicHeight(
                  child: Row(
                    children: modules.map<Widget>((e) {
                      ColorSystem c = e.getColor(context);
                      return Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: SmartSuggestionCard(
                          title: e.title,
                          description: e.description,
                          onPressed: () async {
                            e.onTap(context);
                          },
                          color: c,
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          );
  }
}
