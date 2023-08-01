import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class BoxListHorizontalShortcutsDevelopmentModuleWidget extends StatelessWidget {
  const BoxListHorizontalShortcutsDevelopmentModuleWidget({
    Key? key,
    this.list,
  }) : super(key: key);
  final List<ModulePjmei>? list;

  @override
  Widget build(BuildContext context) {
    final List<ModulePjmei> modules = (list ?? []);
    modules.sort((a, b) => a.index.compareTo(b.index));
    return modules.length == 0
      ? const SizedBox()
      : Container(
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
              PointerDeviceKind.touch,
              PointerDeviceKind.mouse,
            }),
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(25, 25, 25, 0,),
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: modules.map<Widget>((module) {
                  if (module.toShortcuts(context).isValid()) {
                    ColorSystem color = ColorSystem(
                      context: context,
                      defaultType: 'primaryContainer',
                      type: module.params['styleWidget'],
                    );
                    final ColorsByToken colors = ColorsAdapter.getByType(color);
                    return RoundCard(
                      title: module.title,
                      spotlight: module.getSpotlightWidget(context, color: color),
                      color: color,
                      onPressed: () async {
                        await module.onTap(context);
                      },
                      child: module.toShortcuts(
                        context,
                        color: true,
                        iconColor: colors.onBackground,
                      ).image ?? const SizedBox(),
                    );
                  } else {
                    return const SizedBox();
                  }
                }).toList(),
              ),
            ),
          ),
        );
  }
}