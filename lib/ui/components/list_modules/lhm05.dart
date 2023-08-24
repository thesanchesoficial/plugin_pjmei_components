import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class LHM05 extends StatelessWidget {
  const LHM05({
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
            child: IntrinsicHeight(
              child: ScrollConfiguration(
                behavior:
                    ScrollConfiguration.of(context).copyWith(dragDevices: {
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
                      children: modules.map<Widget>((module) {
                        if (module.toDiscover(context).isValid()) {
                          ColorSystem c = module.getColor(context, defaultType: 'tertiaryContainer');
                          final ColorsByToken colors = ColorsAdapter.getByType(c);
                          return Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: Ink(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                color: colors.background,
                              ),
                              child: InkWell(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                                onTap: () async {
                                  await module.onTap(context);
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(25),
                                  width: modules.length > 1
                                      ? MediaQuery.sizeOf(context).width * 0.7
                                      : MediaQuery.sizeOf(context).width - 50,
                                  constraints: BoxConstraints(
                                    maxWidth: modules.length > 1
                                        ? 340
                                        : double.infinity,
                                    minWidth: 290,
                                    minHeight: 55,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Visibility(
                                        visible: Valid.text(module.title),
                                        child: OwText(
                                          '${module.title}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge!
                                              .copyWith(
                                                color: colors.onBackground,
                                              ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: Valid.text(module.title) &&
                                            Valid.text(module.description),
                                        child: const SizedBox(
                                          height: 8,
                                        ),
                                      ),
                                      Visibility(
                                        visible: Valid.text(module.description),
                                        child: HtmlWidget(
                                          '${module.description}',
                                          onErrorBuilder: (context, element, error) => OwText('$element error: $error'),
                                          onLoadingBuilder: (context, element, loadingProgress) => const CircularProgressIndicator(),
                                          customStylesBuilder: (element) {
                                            return null;
                                          },
                                          renderMode: RenderMode.column,
                                          textStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                            color: colors.onBackground,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        } else {
                          return const SizedBox();
                        }
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
