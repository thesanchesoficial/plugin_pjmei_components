import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/ui/components/widgets/ow_text.dart';

import '../../features/modules/domain/entity/pjmei_module_entity.dart';

class BoxFloatingButtonWidget extends StatelessWidget {
  const BoxFloatingButtonWidget({
    Key? key,
    this.list,
  }) : super(key: key);
  final List<ModulePjmei>? list;

  @override
  Widget build(BuildContext context) {
    final List<ModulePjmei> modules = (list ?? []);
    modules.sort((a, b) => a.index.compareTo(b.index));
    return modules.isEmpty
        ? const SizedBox()
        : SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: modules.map((e) => Padding(
                padding: const EdgeInsets.only(top: 15),
                child: FloatingActionButton.extended(
                  icon: e.toShortcuts(context).image,
                  label: OwText('${e.toShortcuts(context).title}'),
                  onPressed: () async {
                    await e.onTap(context);
                  },
                ),
              ))
              .toList(),
            ),
          );
  }
}
