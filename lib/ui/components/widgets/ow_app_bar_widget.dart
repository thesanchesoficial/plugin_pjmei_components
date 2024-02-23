import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui';

import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class OwAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  final List<Widget>? actions;
  final double titleSpacing;
  final Widget? title;
  final Widget? leading;
  final double? leadingWidth;
  final IconThemeData? iconTheme;
  final double? elevation;
  final double? scrolledUnderElevation;
  final PreferredSizeWidget? bottom;
  final bool? centerTitle;
  final SystemUiOverlayStyle? systemOverlayStyle;
  final Color? backgroundColor;
  final Color? surfaceTintColor;
  final Color? shadowColor;
  final bool automaticallyImplyLeading;
  final bool glassmorphic;

  OwAppBar({
    Key? key,
    this.actions = const [],
    this.titleSpacing = 8,
    this.title,
    this.leading,
    this.leadingWidth,
    this.iconTheme,
    this.elevation,
    this.scrolledUnderElevation,
    this.bottom,
    this.centerTitle,
    this.systemOverlayStyle,
    this.backgroundColor,
    this.surfaceTintColor,
    this.shadowColor,
    this.preferredSize = const Size.fromHeight(kToolbarHeight),
    this.automaticallyImplyLeading = true,
  }) : glassmorphic = false, super(key: key);

  OwAppBar.glassmorphic({
    Key? key,
    this.actions = const [],
    this.titleSpacing = 8,
    this.title,
    this.leading,
    this.leadingWidth,
    this.iconTheme,
    this.bottom,
    this.centerTitle,
    this.systemOverlayStyle,
    this.shadowColor,
    this.preferredSize = const Size.fromHeight(kToolbarHeight),
    this.automaticallyImplyLeading = true,
  }) : 
    glassmorphic = true,
    backgroundColor = Colors.transparent,
    surfaceTintColor = Colors.transparent,
    scrolledUnderElevation = 0,
    elevation = 0,
    super(key: key);

  Widget leadingTemp = const SizedBox();
  List<Widget> actionsTemp = [];
  double leadingWidthTemp = 0;

  method(BuildContext context) {
    if (!automaticallyImplyLeading) {
      leadingWidthTemp = 0;
    }
    if (leading != null) {
      if (leadingWidth == null) {
        leadingWidthTemp = 63;
      } else {
        leadingWidthTemp = leadingWidth!;
      }
      leadingTemp = Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(width: 12),
          leading!,
        ],
      );
    } else if (automaticallyImplyLeading && context.canPop()) {
      leadingWidthTemp = 63;
      leadingTemp = Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(width: 12),
          IconButton(
            onPressed: () {
              try {
                context.pop();
              } catch (e) {
                context.go("/");
              }
            },
            icon: const Icon(EvaIcons.arrowIosBackOutline),
          ),
        ],
      );
    }

    if (actions != null) {
      actionsTemp = actions!.map((e) => e).toList();
      actionsTemp.add(const SizedBox(width: 12));
    }
  }

  @override
  Widget build(BuildContext context) {
    method(context);
    if(glassmorphic) {
      return PreferredSize(
        preferredSize: preferredSize,
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: _appBar(),
          ),
        ),
      );
    }
    return _appBar();
  }

  Widget _appBar() {
    return AppBar(
      actions: actionsTemp,
      titleSpacing: titleSpacing,
      title: title,
      iconTheme: iconTheme,
      leading: leadingTemp,
      shadowColor: shadowColor,
      scrolledUnderElevation: scrolledUnderElevation,
      elevation: elevation,
      leadingWidth: leadingWidthTemp,
      bottom: bottom,
      centerTitle: centerTitle,
      systemOverlayStyle: systemOverlayStyle,
      backgroundColor: backgroundColor,
      surfaceTintColor: surfaceTintColor,
      automaticallyImplyLeading: automaticallyImplyLeading,
    );
  }
}