import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../../../features/modules/domain/entity/pjmei_module_entity.dart';

class LHM02 extends StatelessWidget {
  const LHM02({
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
                    children: modules.map<Widget>((module) {
                      ColorSystem c = module.getColor(context);
                      final ColorsByToken colors = ColorsAdapter.getByType(c);
                      return Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                colors.background,
                              ),
                              elevation: MaterialStateProperty.all(0),
                              padding: MaterialStateProperty.all(
                                const EdgeInsets.all(0),
                              ),
                              side: MaterialStateProperty.all(
                                BorderSide.none,
                              ),
                              shape: MaterialStateProperty.all(
                                const ContinuousRectangleBorder(
                                  side: BorderSide.none,
                                ),
                              ),
                            ),
                            onPressed: () async {
                              await module.onTap(context);
                            },
                            child: Container(
                              margin: const EdgeInsets.all(16),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  module.getIcon() ?? const SizedBox(),
                                  Visibility(
                                    visible:
                                        module.toShortcuts(context).image !=
                                                null &&
                                            Valid.text(module.title),
                                    child: const SizedBox(
                                      width: 15,
                                    ),
                                  ),
                                  Visibility(
                                    visible: Valid.text(module.title, length: 1),
                                    child: OwText(
                                      module.title ?? '',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                            color: colors.onBackground,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
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
