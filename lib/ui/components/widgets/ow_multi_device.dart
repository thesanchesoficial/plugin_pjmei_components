import 'package:flutter/material.dart';

enum BuilderCase { tv, desktop, tablet, phone, watch }

class OwMultiDevice extends StatefulWidget {
  final Widget Function(BuildContext context)? tvBuilder;
  final Widget Function(BuildContext context)? desktopBuilder;
  final Widget Function(BuildContext context)? tabletBuilder;
  final Widget Function(BuildContext context)? phoneBuilder;
  final Widget Function(BuildContext context)? watchBuilder;
  final BuilderCase? builderCase;

  const OwMultiDevice({
    Key? key,
    this.tvBuilder,
    this.desktopBuilder,
    this.tabletBuilder,
    this.phoneBuilder,
    this.watchBuilder,
    this.builderCase,
  }) : super(key: key);

  @override
  _OwMultiDeviceState createState() => _OwMultiDeviceState(
    this.tvBuilder,
    this.desktopBuilder,
    this.tabletBuilder,
    this.phoneBuilder,
    this.watchBuilder,
    this.builderCase,
  );
}

class _OwMultiDeviceState extends State<OwMultiDevice> {
  final Widget Function(BuildContext context)? tvBuilder;
  final Widget Function(BuildContext context)? desktopBuilder;
  final Widget Function(BuildContext context)? tabletBuilder;
  final Widget Function(BuildContext context)? phoneBuilder;
  final Widget Function(BuildContext context)? watchBuilder;
  final BuilderCase? builderCase;

  _OwMultiDeviceState(
    this.tvBuilder, 
    this.desktopBuilder, 
    this.tabletBuilder, 
    this.phoneBuilder, 
    this.watchBuilder,
    this.builderCase,
  );

  @override
  Widget build(BuildContext context) {
    switch (builderCase) {
      case BuilderCase.tv:
        return tvBuilder?.call(context) ?? const SizedBox();
      case BuilderCase.desktop:
        return desktopBuilder?.call(context) ?? const SizedBox();
      case BuilderCase.tablet:
        return tabletBuilder?.call(context) ?? const SizedBox();
      case BuilderCase.phone:
        return phoneBuilder?.call(context) ?? const SizedBox();
      case BuilderCase.watch:
        return watchBuilder?.call(context) ?? const SizedBox();
      default:
        return desktopBuilder?.call(context) ?? const SizedBox();
    }
  }
}

// Ao invés de usar o BuilderCase, usar uma lista de widths
List<double> responsive = [360, 650, 1100]; // watch / mobile / table / desktop