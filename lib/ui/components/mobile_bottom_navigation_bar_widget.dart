import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:pjmei_white_label_dependencies/pjmei_white_label_dependencies.dart';

class MobileBottomNavigationBar extends StatelessWidget {
  const MobileBottomNavigationBar({super.key, required this.screens});
  final List<TabModuleWidget> screens;
  
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        if(appSM.isWeb) {
          return const SizedBox();
        } else {
          return NavigationBar(
            selectedIndex: appSM.selectedIndex,
            onDestinationSelected: (value) {
              appSM.setSelectedIndex(value);
            },
            destinations: screens.map((e) => NavigationDestination(
              label: e.title,
              icon: Icon(e.icon),
              selectedIcon: Icon(e.icon),
              tooltip: e.title,
            )).toList(),
          );
        }
      }
    );
  }
}