import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class PageDynamicPage extends StatefulWidget {
  const PageDynamicPage(this.module, {Key? key, this.modules}) : super(key: key);
  final ModulePjmei module;
  final List<ModulePjmei>? modules;

  @override
  State<PageDynamicPage> createState() => _PageDynamicPageState();
}

class _PageDynamicPageState extends State<PageDynamicPage> with AutomaticKeepAliveClientMixin<PageDynamicPage> {
  @override
  bool get wantKeepAlive => true;

  List<ModulePjmei>? modules;

  @override
  void initState() {
    super.initState();
    if (widget.modules != null && widget.modules!.isNotEmpty) {
      modules = widget.modules;
    } else {
      callApi();
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: OwAppBar(
        actions: [
          CardActionListWidget(
            list: modules,
          ),
        ],
        title: Visibility(
          visible: Valid.text(widget.module.params?['titleAppBarDynamicPage']),
          child: OwText(
            "${widget.module.params?["titleAppBarDynamicPage"]}".toUpperCase(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: modules == null
            ? Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                child: CardLoadingDashboardHomeApi(),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Visibility(
                          visible: Valid.text(
                            widget.module.params?['slugDynamicPage'],
                          ),
                          child: OwText(
                            "${widget.module.params?["slugDynamicPage"]}",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                        Visibility(
                          visible: Valid.text(
                            widget.module.params?['titleDynamicPage'],
                          ),
                          child: OwText(
                            "${widget.module.params?["titleDynamicPage"]}",
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                        ),
                        Visibility(
                          visible: Valid.text(
                            widget.module.params?['descriptionDynamicPage'],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: OwText(
                              "${widget.module.params?["descriptionDynamicPage"]}",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListModulesWidget(
                    modules: modules ?? [],
                  ),
                ],
              ),
      ),
      floatingActionButton: BoxFloatingButtonWidget(
        list: modules,
      ),
    );
  }

  void callApi() async {
    try {
      modules = await makeRemoteGetListModules(params: {
        'screen': "${widget.module.params?["idDynamicPage"]}",
        'companyId': companySM.company?.id,
      }).exec();
    } catch (e) {
      // e
    }
    setState(() {});
  }
}
