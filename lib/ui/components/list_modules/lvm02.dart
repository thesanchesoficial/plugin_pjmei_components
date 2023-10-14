import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class LVM02 extends StatelessWidget {
  const LVM02({
    Key? key,
    this.list,
  }) : super(key: key);
  final List<ModulePjmei>? list;

  @override
  Widget build(BuildContext context) {
    final List<ModulePjmei> modules =(list ?? []);
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
                    ColorSystem c = modules[index].getColor(context, defaultType: 'primaryContainer');
                    final ColorsByToken colors = ColorsAdapter.getByType(c);
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              colors.background,
                            ),
                            elevation: MaterialStateProperty.all(0),
                            padding: MaterialStateProperty.all(
                              const EdgeInsets.all(0),
                            ),
                            shape: MaterialStateProperty.all(
                              const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(0),
                                ),
                              ),
                            ),
                            side: MaterialStateProperty.all(BorderSide.none),
                          ),
                          onPressed: () async {
                            await modules[index].onTap(context);
                          },
                          child: Container(
                            margin: const EdgeInsets.all(25),
                            width: MediaQuery.sizeOf(context).width,
                            child: Row(
                              children: [
                                modules[index].toShortcuts(context).image !=
                                        null
                                    ? Padding(
                                        padding:
                                            const EdgeInsets.only(right: 25),
                                        child: modules[index]
                                            .toShortcuts(context,
                                                iconColor: colors.onBackground)
                                            .image,
                                      )
                                    : const SizedBox(),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Visibility(
                                        visible:
                                            Valid.text(modules[index].title, length: 1),
                                        child: OwText(
                                          '${modules[index].title}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium!
                                              .copyWith(
                                                color: colors.onBackground,
                                              ),
                                        ),
                                      ),
                                      Visibility(
                                        visible:
                                            Valid.text(modules[index].title, length: 1) &&
                                                Valid.text(
                                                    modules[index].description, length: 1),
                                        child: const SizedBox(height: 4),
                                      ),
                                      Visibility(
                                        visible: Valid.text(
                                            modules[index].description, length: 1),
                                        child: OwText(
                                          '${modules[index].description}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(
                                                color: colors.onBackground,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 2,
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          width: MediaQuery.sizeOf(context).width,
                        ),
                      ],
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
