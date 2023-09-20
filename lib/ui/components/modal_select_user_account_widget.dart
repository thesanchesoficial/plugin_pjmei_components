import 'package:flutter/material.dart';
import 'dart:async';
import 'package:pjmei_white_label_dependencies/pjmei_white_label_dependencies.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class ModalSelectUserAccountWidget extends StatefulWidget {
  const ModalSelectUserAccountWidget({Key? key, required this.isPf}) : super(key: key);
  final bool isPf;
  @override
  State<ModalSelectUserAccountWidget> createState() => _ModalSelectUserAccountWidgetState();
}

class _ModalSelectUserAccountWidgetState extends State<ModalSelectUserAccountWidget> {
  bool isShowOthersAccount = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary.withOpacity(.15),
        borderRadius: const BorderRadius.all(Radius.circular(30)),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          constraints: const BoxConstraints(minWidth: 30),
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.close,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ),
                        Image.asset(
                          '${WhiteLabelEntity.current?.style.image.logoMenuWeb}',
                          fit: BoxFit.fitHeight,
                          color: Theme.of(context).colorScheme.primary,
                          height: 15,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 16),
                          constraints: const BoxConstraints(minWidth: 30),
                          child: const SizedBox(),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 16, bottom: 10),
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(30),
                                ),
                                onTap: () {
                                  Navigator.pop(context);
                                  context.push(userProfile);
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(16),
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(30),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).colorScheme.secondaryContainer,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          EvaIcons.personOutline,
                                          color: Theme.of(context).textTheme.displayLarge?.color,
                                        ),
                                      ),
                                      const SizedBox(width: 16),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            OwText(
                                              '${userSM.user?.name}',
                                              style: Theme.of(context).textTheme.titleMedium,
                                            ),
                                            const SizedBox(
                                              height: 2,
                                            ),
                                            OwText(
                                              '${userSM.user?.email}',
                                              style: const TextStyle(
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            OwButton.outline(
                              margin: const EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              height: 40,
                              labelText: 'Gerenciar minha conta',
                              onPressed: () {
                                Navigator.pop(context);
                                context.push(userProfile);
                              },
                            ),
                            const SizedBox(height: 12),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ItemModalWidget(
                title: 'Configurações',
                icon: EvaIcons.settings2Outline,
                onPressed: () {
                  Navigator.pop(context);
                  userSM.user = null;
                  context.push('${logoutRedirect}');
                }
              ),
              ItemModalWidget(
                title: 'Sair da conta',
                icon: EvaIcons.logOutOutline,
                onPressed: () {
                  Navigator.pop(context);
                  userSM.user = null;
                  context.push('${logoutRedirect}');
                }
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

Future setModalSelectUserAccountWidget(context, {bool isPf = false}) async {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        elevation: 0,
        alignment: Alignment.topRight,
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.zero,
        contentPadding: const EdgeInsets.fromLTRB(10, 10 + kToolbarHeight, 10, 10),
        content: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: const BorderRadius.all(Radius.circular(30)),
          ),
          width: MediaQuery.sizeOf(context).width,
          constraints: appSM.isWeb
              ? const BoxConstraints(
                  minWidth: 200,
                  maxWidth: 360,
                  minHeight: 180,
                  maxHeight: 580,
                )
              : null,
          child: ModalSelectUserAccountWidget(
            isPf: isPf,
          ),
        ),
      );
    }
  );
}
