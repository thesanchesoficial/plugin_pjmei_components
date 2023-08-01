import 'dart:async';
import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/domain/entities/tab_module_widget.dart';
import 'package:plugin_pjmei_components/main/factories/usecases/modules/list_modules.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:plugin_pjmei_components/ui/components/card_loading_api.dart';
import 'package:plugin_pjmei_components/ui/pages/dynamic_page/page.dart';

class DynamicPage extends StatefulWidget {
  const DynamicPage(this.module, {Key? key}) : super(key: key);
  static const String route = '/dynamic-page';
  final ModulePjmei module;

  @override
  State<DynamicPage> createState() => _DynamicPageState();
}

class _DynamicPageState extends State<DynamicPage> with AutomaticKeepAliveClientMixin<DynamicPage>, SingleTickerProviderStateMixin {
  @override
  bool get wantKeepAlive => true;

  List<ModulePjmei>? modules;
  List<TabModuleWidget> _screens = [];

  TabController? _tabController;
  final StreamController _streamController = StreamController<Map>.broadcast();

  @override
  void initState() {
    super.initState();
    callApi();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: _tabController == null ? OwAppBar() : null,
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Row(
          children: [
            appSM.isWeb
                ? Container(
                    width: 1,
                    height: MediaQuery.sizeOf(context).height,
                    color: Theme.of(context).secondaryHeaderColor,
                  )
                : const SizedBox(),
            Expanded(
              child: StreamBuilder(
                stream: _streamController.stream,
                builder: (contex, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                    case ConnectionState.none:
                      return Container(
                        alignment: Alignment.topCenter,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 25,
                        ),
                        child: CardLoadingDashboardHomeApi(),
                      );
                    default:
                      if (moduleSM.modules == null) {
                        return Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 25,
                          ),
                          child: CardLoadingDashboardHomeApi(),
                        );
                      }
                      if (snapshot.hasError || snapshot.data == null) {
                        return OwButton.outline(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 25,
                          ),
                          leading: EvaIcons.refreshOutline,
                          trailing: EvaIcons.refreshOutline,
                          labelText: 'Tentar novamente',
                          onPressed: () {
                            setState(() {
                              moduleSM.modules = null;
                            });
                            callApi();
                          },
                        );
                      } else {
                        return TabBarView(
                          controller: _tabController,
                          children: _screens.map((e) => e.page).toList(),
                        );
                      }
                  }
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _screens.length > 1
          ? NavigationBar(
              backgroundColor:
                  Theme.of(context).colorScheme.primary.withOpacity(0.22),
              selectedIndex: _tabController!.index,
              onDestinationSelected: (value) {
                _tabController!.animateTo(value);
              },
              destinations: _screens.map((e) {
                return NavigationDestination(
                  icon: Icon(e.icon),
                  label: e.title,
                  tooltip: e.title,
                );
              }).toList(),
            )
          : null,
    );
  }

  void callApi() async {
    try {
      modules = await makeRemoteGetListModules(
        params: {
          'screen': "${widget.module.params["idDynamicPage"]}",
          'companyId': companySM.company?.id,
        },
      ).exec();

      _screens.add(
        TabModuleWidget(
          title: 'Início',
          icon: EvaIcons.homeOutline,
          page: PageDynamicPage(widget.module, modules: modules ?? []),
        ),
      );

      modules?.forEach(
        (element) {
          final moduleTemp = element;
          if (moduleTemp.displayType == 'TAB') {
            if (_screens.length < 5) {
              if (routersApp.containsKey(moduleTemp.route)) {
                _screens.add(
                  TabModuleWidget(
                    title: moduleTemp.title ?? '',
                    icon: IconAdapter.getIcon(moduleTemp.image?['value']),
                    page: routersApp[moduleTemp.route]!.call(context),
                  ),
                );
              } else if (moduleTemp.params['isDynamicPage'] == true) {
                _screens.add(
                  TabModuleWidget(
                    title: moduleTemp.title ?? '',
                    icon: IconAdapter.getIcon(moduleTemp.image?['value']),
                    page: PageDynamicPage(moduleTemp),
                  ),
                );
              }
            }
          }
        },
      );
      _streamController.add({'ds': 'fdc'});

      _tabController = TabController(
        length: _screens.length,
        vsync: this,
        initialIndex: 0,
      );

      _tabController!.addListener(() {
        if (_tabController!.indexIsChanging == false) {
          setState(() {});
        }
      });
    } catch (e) {
      // e
    }
    setState(() {});
  }
}
