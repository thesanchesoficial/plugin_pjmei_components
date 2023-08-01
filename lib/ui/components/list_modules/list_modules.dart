import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:plugin_pjmei_components/ui/components/list_modules/lgm01.dart';
import 'package:plugin_pjmei_components/ui/components/list_modules/lgm02.dart';
import 'package:plugin_pjmei_components/ui/components/list_modules/lgm03.dart';
import 'package:plugin_pjmei_components/ui/components/list_modules/lgm04.dart';
import 'package:plugin_pjmei_components/ui/components/list_modules/lhm01.dart';
import 'package:plugin_pjmei_components/ui/components/list_modules/lhm02.dart';
import 'package:plugin_pjmei_components/ui/components/list_modules/lhm03.dart';
import 'package:plugin_pjmei_components/ui/components/list_modules/lhm04.dart';
import 'package:plugin_pjmei_components/ui/components/list_modules/lhm05.dart';
import 'package:plugin_pjmei_components/ui/components/list_modules/lhm06.dart';
import 'package:plugin_pjmei_components/ui/components/list_modules/lhm07.dart';
import 'package:plugin_pjmei_components/ui/components/list_modules/lvm01.dart';
import 'package:plugin_pjmei_components/ui/components/list_modules/lvm02.dart';
import 'package:plugin_pjmei_components/ui/components/list_modules/lvm03.dart';
import 'package:plugin_pjmei_components/ui/components/list_modules/lvm04.dart';

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
            LHM01(list: widget.modules),
            LHM02(list: widget.modules),
            LHM03(list: widget.modules),
            LVM01(list: widget.modules),
            LVM02(list: widget.modules),
            LHM04(list: widget.modules),
            LGM04(list: widget.modules),
            LGM01(list: widget.modules),
            LGM02(list: widget.modules),
            LGM03(list: widget.modules),
            LHM05(list: widget.modules),
            LVM03(list: widget.modules),
            LVM04(list: widget.modules),
            LHM06(list: widget.modules),
            LHM07(list: widget.modules),
          ],
        ),
      );
    });
  }
}
