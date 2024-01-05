import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';


class LVM03 extends StatelessWidget {
  const LVM03({
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
              ListView.builder(
                padding: const EdgeInsets.all(0),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: modules.length,
                itemBuilder: (context, index) {
                  if (modules[index].toShortcuts(context).isValid()) {
                    ColorSystem c = modules[index].getColor(context);
                    return BasicHorizontalCard(
                      title: modules[index].title,
                      description: modules[index].description,
                      leading: modules[index].getIcon(),
                      extra: modules[index].getImage(),
                      onPressed: () async {
                        await modules[index].onTap(context);
                      },
                      color: c,
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              ),
            ],
          );
  }
}
