import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../../../features/modules/domain/entity/pjmei_module_entity.dart';

class LVM01 extends StatelessWidget {
  const LVM01({
    Key? key,
    this.list,
  }) : super(key: key);
  final List<ModulePjmei>? list;

  @override
  Widget build(BuildContext context) {
    final List<ModulePjmei> modules = (list ?? []);
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
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  border: Border.all(
                    width: 1,
                    color: Theme.of(context).colorScheme.secondaryContainer,
                  ),
                ),
                child: ListView.separated(
                  padding: const EdgeInsets.all(0),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: modules.length,
                  separatorBuilder: (context, index) {
                    return Container(
                      height: 1,
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      width: MediaQuery.sizeOf(context).width,
                    );
                  },
                  itemBuilder: (context, index) {
                    if (modules[index].toShortcuts(context).isValid()) {
                      ColorSystem c = modules[index].getColor(context, defaultType: 'background');
                      final ColorsByToken colors = ColorsAdapter.getByType(c);
                      return ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            colors.background,
                          ),
                          elevation: MaterialStateProperty.all(0),
                          padding: MaterialStateProperty.all(
                            const EdgeInsets.all(0),
                          ),
                          side: MaterialStateProperty.all(BorderSide.none),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(
                                index == 0 ? 15 : 0,
                              ),
                              bottom: Radius.circular(
                                index == (modules.length - 1) ? 15 : 0,
                              ),
                            ),
                            side: const BorderSide(color: Colors.transparent),
                          )),
                        ),
                        onPressed: () async {
                          await modules[index].onTap(context);
                        },
                        child: Container(
                          margin: const EdgeInsets.all(25),
                          width: MediaQuery.sizeOf(context).width,
                          child: Row(
                            children: [
                              modules[index].toShortcuts(context).image != null
                                  ? Padding(
                                      padding: const EdgeInsets.only(right: 25),
                                      child: modules[index]
                                          .toShortcuts(
                                            context,
                                            iconColor: colors.onBackground,
                                          )
                                          .image,
                                    )
                                  : const SizedBox(),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Visibility(
                                      visible: Valid.text(modules[index].title, length: 1),
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
                                      child: const SizedBox(height: 6),
                                    ),
                                    Visibility(
                                      visible: Valid.text(
                                          modules[index].description, length: 1),
                                      child: OwText(
                                        '${modules[index].description}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
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
                      );
                    } else {
                      return const SizedBox();
                    }
                  },
                ),
              ),
            ],
          );
  }
}
