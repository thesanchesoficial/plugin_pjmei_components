import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class WebHorizontalNavigationBar extends StatelessWidget {
  const WebHorizontalNavigationBar({super.key, required this.screens});
  final List<TabModuleWidget> screens;

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
                child: ListView.separated(
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
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              constraints: const BoxConstraints(maxWidth: 400, minWidth: 140),
              height: 2,
              color: Theme.of(context).colorScheme.secondaryContainer,
            ),
            Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ButtonMenuWeb(
                    label: 'Me ajuda',
                    icon: EvaIcons.questionMarkCircleOutline,
                    onPressed: () {
                      context.push('/me-ajuda');
                    },
                  ),
                  ButtonMenuWeb(
                    label: 'Configurações',
                    icon: EvaIcons.settings2Outline,
                    onPressed: () {
                      context.push('/settings');
                    },
                  ),
                ],
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