import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:pjmei_white_label_dependencies/pjmei_white_label_dependencies.dart';

openModalPage(BuildContext context, Widget widget) async {
  if (MediaQuery.sizeOf(context).width > webStartsWithWidth) {
    return await showDialog(
      context: context,
      builder: (context) {
        return ModalWebPage(child: widget);
      },
    );
  } else {
    return await showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: context,
      builder: (context) => widget,
    );
  }
}

class OpenLinkPageParams {
  final Widget? child;
  final String? route;
  final bool packageRoute;
  final bool dynamicResponsivity;
  final bool? useGo;
  final Object? extra;

  OpenLinkPageParams.basic({
    required this.child,
    this.dynamicResponsivity = true,
  })  : route = null,
        extra = null,
        useGo = null,
        packageRoute = false;

  OpenLinkPageParams.packageRoute({
    required this.route,
    this.dynamicResponsivity = true,
    this.extra,
    this.useGo = false,
  })  : child = null,
        packageRoute = true;
}

openLinkPage(BuildContext context, OpenLinkPageParams params) async {
  if (MediaQuery.sizeOf(context).width > webStartsWithWidth &&
      params.dynamicResponsivity) {
    return await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: const EdgeInsets.all(0),
          insetPadding: const EdgeInsets.all(0),
          backgroundColor: Colors.transparent,
          elevation: 0,
          content: Container(
            constraints: const BoxConstraints(minWidth: 470),
            height: MediaQuery.sizeOf(context).height * 0.95,
            width: MediaQuery.sizeOf(context).width * 0.5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: params.child,
            ),
          ),
        );
      },
    );
  } else if (params.packageRoute) {
    if (params.useGo!) {
      return context.go(params.route!, extra: params.extra);
    } else {
      return context.push(params.route!, extra: params.extra);
    }
  } else {
    return await Navigator.push(context, RightToLeft(page: params.child!));
  }
}

class ModalWebPage extends StatelessWidget {
  final Widget child;
  const ModalWebPage({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(0),
      insetPadding: const EdgeInsets.all(0),
      backgroundColor: Colors.transparent,
      elevation: 0,
      content: Container(
        constraints: const BoxConstraints(minWidth: 470),
        width: MediaQuery.sizeOf(context).width * 0.5,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Material(
            color: Theme.of(context).colorScheme.background,
            child: child,
          ),
        ),
      ),
    );
  }
}
