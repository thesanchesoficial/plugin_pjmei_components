import 'dart:async';

import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class ModalSelectCompanyWidget extends StatefulWidget {
  const ModalSelectCompanyWidget({
    Key? key,
    this.isStore = false,
  }) : super(key: key);
  final bool isStore;

  @override
  State<ModalSelectCompanyWidget> createState() =>
      _ModalSelectCompanyWidgetState();
}

class _ModalSelectCompanyWidgetState
    extends State<ModalSelectCompanyWidget> {
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
                                          Icons.store_outlined,
                                          color: Theme.of(context).textTheme.displayLarge?.color,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            OwText(
                                              '${companySM.company?.fantasyName}',
                                              style: Theme.of(context).textTheme.titleMedium,
                                            ),
                                            const SizedBox(height: 2),
                                            OwText(
                                              '${OwFormat.cpfCnpj(companySM.company?.documentNumber)}',
                                              style: const TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 0),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                itemCount: 0,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32,
                          vertical: 12,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: OwText(
                                'Empresa $index',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: Theme.of(context)
                                  .textTheme
                                  .displayLarge
                                  ?.color,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              // ListView.builder(
              //   shrinkWrap: true,
              //   physics: const NeverScrollableScrollPhysics(),
              //   itemCount: WhiteLabelEntity.current?.settings.optionsModalBusiness.length,
              //   itemBuilder: (context, index) {
              //     return WhiteLabelEntity.current?.settings.optionsModalBusiness[index];
              //   },
              // ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

Future setModalSelectCompanieWidget(context, {bool isStore = false}) async {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        elevation: 0,
        alignment: Alignment.topLeft,
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
          child: ModalSelectCompanyWidget(isStore: isStore),
        ),
      );
    },
  );
}
