import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';


class ListModulesWidget extends StatefulWidget {
  const ListModulesWidget({
    Key? key,
    this.modules,
  }) : super(key: key);
  final List<ModulePjmei>? modules;

  @override
  State<ListModulesWidget> createState() => _ListModulesWidgetState();
}

class _ListModulesWidgetState extends State<ListModulesWidget> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return MediaQuery(
        data: MediaQueryData(
          size: Size(
            constraints.maxWidth,
            constraints.maxHeight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LHM01(list: (widget.modules ?? []).where((value) => value.displayType == 'LHM01').toList()),
            LHM02(list: (widget.modules ?? []).where((value) => value.displayType == 'LHM02').toList()),
            LHM03(list: (widget.modules ?? []).where((value) => value.displayType == 'LHM03').toList()),
            LVM01(list: (widget.modules ?? []).where((value) => value.displayType == 'LVM01').toList()),
            LVM02(list: (widget.modules ?? []).where((value) => value.displayType == 'LVM02').toList()),
            LHM04(list: (widget.modules ?? []).where((value) => value.displayType == 'LHM04').toList()),
            LGM04(list: (widget.modules ?? []).where((value) => value.displayType == 'LGM04').toList()),
            LGM01(list: (widget.modules ?? []).where((value) => value.displayType == 'LGM01').toList()),
            LGM02(list: (widget.modules ?? []).where((value) => value.displayType == 'LGM02').toList()),
            LGM03(list: (widget.modules ?? []).where((value) => value.displayType == 'LGM03').toList()),
            LHM05(list: (widget.modules ?? []).where((value) => value.displayType == 'LHM05').toList()),
            LVM03(list: (widget.modules ?? []).where((value) => value.displayType == 'LVM03').toList()),
            LVM04(list: (widget.modules ?? []).where((value) => value.displayType == 'LVM04').toList()),
            LHM06(list: (widget.modules ?? []).where((value) => value.displayType == 'LHM06').toList()),
            LHM07(list: (widget.modules ?? []).where((value) => value.displayType == 'LHM07').toList()),
          ],
        ),
      );
    });
  }
}
