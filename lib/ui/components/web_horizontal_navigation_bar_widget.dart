import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class WebHorizontalNavigationBar extends StatelessWidget {
  const WebHorizontalNavigationBar({super.key, required this.screens, this.header, this.footer});
  final List<TabModuleWidget> screens;
  final Widget? header;
  final Widget? footer;

  @override
  Widget build(BuildContext context) {
    if(screens.length > 1) {
      return Container(
        width: 246,
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(
              width: 2,
              color: Theme.of(context).colorScheme.secondaryContainer,
            ),
          ),
        ),
        constraints: const BoxConstraints(maxWidth: 400, minWidth: 140),
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    header ?? const SizedBox(),
                    ListView.separated(
                      padding: const EdgeInsets.all(25),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: screens.length,
                      separatorBuilder: (context, index) {
                        return const SizedBox(height: 10);
                      },
                      itemBuilder: (context, index) {
                        return Observer(
                          builder: (context) {
                            return ButtonMenuWeb(
                              label: screens[index].title,
                              icon: screens[index].icon,
                              selected: appSM.selectedIndex == index,
                              onPressed: () {
                                appSM.setSelectedIndex(index);
                              },
                            );
                          }
                        );
                      },
                    ),
                    footer ?? const SizedBox(),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}