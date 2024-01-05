import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';


class CardActionListWidget extends StatelessWidget {
  const CardActionListWidget({
    Key? key,
    this.list,
  }) : super(key: key);
  final List<ModulePjmei>? list;

  @override
  Widget build(BuildContext context) {
    final List<ModulePjmei> modules = (list ?? []);
    modules.sort((a, b) => a.index.compareTo(b.index));
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: modules.map<Widget>((module) {
        if(module.toShortcuts(context).isValid()) {
          module.image ??= {};
          return IconButton(
            onPressed: () async {
              await module.onTap(context);
            },
            icon: Icon(
              IconAdapter.getIcon('${module.image?['value']}'),
            ),
          );
        } else {
          return const SizedBox();
        }
      }).toList(),
    );
  }
}
