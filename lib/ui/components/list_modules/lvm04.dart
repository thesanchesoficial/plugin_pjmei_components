import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';


class LVM04 extends StatelessWidget {
  const LVM04({
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(
                  25,
                  25,
                  25,
                  0,
                ),
              ),
              const OwDivider(),
              ListView.builder(
                padding: const EdgeInsets.all(0),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: modules.length,
                itemBuilder: (context, index) {
                  ColorSystem c = modules[index].getColor(context);
                  return FullRectangularCard(
                    color: c,
                    spotlight: modules[index].getSpotlightWidget(context, color: c),
                    description: modules[index].description,
                    title: modules[index].title,
                    onPressed: () async {
                      modules[index].onTap(context);
                    },
                    leading: modules[index].getIcon(),
                    extra: modules[index].getImage(),
                  );
                },
              ),
            ],
          );
  }
}
