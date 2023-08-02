import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class LHM03 extends StatelessWidget {
  const LHM03({
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
        : Container(
            child: ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
              }),
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(
                  25,
                  25,
                  15,
                  0,
                ),
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: modules.map<Widget>((module) {
                      return Observer(builder: (context) {
                        if (appSM.dataSavingMode) {
                          ColorSystem c = module.getColor(context);
                          final ColorsByToken colors = ColorsAdapter.getByType(c);
                          return Container(
                            constraints: const BoxConstraints(
                              maxWidth: 630,
                            ),
                            margin: const EdgeInsets.only(right: 1),
                            width: modules.length > 1
                                ? MediaQuery.sizeOf(context).width - 70
                                : MediaQuery.sizeOf(context).width - 50,
                            child: Card(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              color: colors.background,
                              child: InkWell(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                onTap: () {
                                  module.onTap(context);
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(25),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Visibility(
                                        visible: Valid.text(module.spotlight),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            bottom: 15,
                                          ),
                                          child: module.getSpotlightWidget(
                                            context,
                                            color: c,
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: Valid.text(module.title),
                                        child: OwText(
                                          '${module.title}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineMedium!
                                              .copyWith(
                                                color: colors.onBackground,
                                              ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: (Valid.text(module.title)) &&
                                                (Valid.text(module.description))
                                            ? 10
                                            : 0,
                                      ),
                                      Visibility(
                                        visible: Valid.text(module.description),
                                        child: OwText(
                                          '${module.description}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(
                                                color: colors.onBackground,
                                              ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: Valid.text(
                                            module.params?['labelButton']),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 20),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Material(
                                                color: Colors.transparent,
                                                child: CardAtalhos(
                                                  title:
                                                      "${module.params?["labelButton"]}",
                                                  selecionado: true,
                                                  selectedColor: module.params?[
                                                              'buttonSelected'] ==
                                                          true
                                                      ? colors.selectedButton
                                                      : colors.button,
                                                  labelColor: module.params?[
                                                              'buttonSelected'] ==
                                                          true
                                                      ? colors.onSelectedButton
                                                      : colors.onButton,
                                                  onPressed: () async {
                                                    await module.onTap(context);
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }
                        if (Valid.text(module.image?['value']) &&
                            module.image?['type'] == 'NETWORK') {
                          return Container(
                            constraints: const BoxConstraints(
                              maxWidth: 980,
                            ),
                            width: modules.length > 1
                                ? MediaQuery.sizeOf(context).width - 70
                                : MediaQuery.sizeOf(context).width - 50,
                            margin: const EdgeInsets.only(right: 10),
                            child: AspectRatio(
                              aspectRatio: 900 / 420,
                              child: Ink(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                  image: module.image?['type'] == 'ICON'
                                      ? null
                                      : (module.image?['type'] == 'NETWORK')
                                          ? DecorationImage(
                                              image: NetworkImage(
                                                  module.image!['value']!))
                                          : DecorationImage(
                                              image: AssetImage(
                                                  module.image!['value']!)),
                                ),
                                child: InkWell(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                  onTap: () {
                                    module.onTap(context);
                                  },
                                  child: AspectRatio(
                                    aspectRatio: 900 / 420,
                                    child: Container(
                                      constraints: const BoxConstraints(
                                        maxWidth: 450,
                                      ),
                                      width:
                                          MediaQuery.sizeOf(context).width - 50,
                                      margin: const EdgeInsets.only(right: 10),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        } else {
                          return const SizedBox();
                        }
                      });
                    }).toList(),
                  ),
                ),
              ),
            ),
          );
  }
}
