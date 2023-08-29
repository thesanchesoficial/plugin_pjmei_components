import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class OwText extends StatelessWidget {

  const OwText(
    this.text, {
    Key? key,
    this.arguments = const {},
    this.style,
    this.maxLines = 1000,
    this.locale,
    this.overflow = TextOverflow.ellipsis,
    this.softWrap = false,
    this.textAlign = TextAlign.left,
    this.textWidthBasis = TextWidthBasis.parent,
    this.textHeightBehavior,
    this.textScaleFactor = 1.0,
    this.textDirection,
    this.strutStyle,
    this.semanticsLabel,
    this.selectionColor,
    this.padding,
    this.hideAllText = false,
    this.hideValue = true,
    this.useHideValueGlobal = true,
  }) : super(key: key);
  final String text;
  final Map<String, dynamic> arguments;
  final TextStyle? style;
  final int maxLines;
  final Locale? locale;
  final TextOverflow overflow;
  final bool softWrap;
  final TextAlign textAlign;
  final TextWidthBasis textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final double textScaleFactor;
  final TextDirection? textDirection;
  final StrutStyle? strutStyle;
  final String? semanticsLabel;
  final Color? selectionColor;
  final EdgeInsets? padding;
  final bool hideAllText;
  final bool hideValue;
  final bool useHideValueGlobal;

  @override
  Widget build(BuildContext context) {

    final Map<String, dynamic> params = {};
    // params.addAll(additionalsCompany);
    // params.addAll(additionalsUser);
    // params.addAll(additionalsStore);
    params.addAll(arguments);

    if(useHideValueGlobal) {
      return Observer(
        builder: (context) {
          return OwTextWidget(
            convertStringAlls(text, additionals: params),
            arguments: arguments,
            hideAllText: hideAllText,
            hideValue: appSM.hideAmount,
            key: key,
            locale: locale,
            maxLines: maxLines,
            overflow: overflow,
            padding: padding,
            selectionColor: selectionColor,
            semanticsLabel: semanticsLabel,
            softWrap: softWrap,
            strutStyle: strutStyle,
            style: style,
            textAlign: textAlign,
            textDirection: textDirection,
            textHeightBehavior: textHeightBehavior,
            textScaleFactor: textScaleFactor,
            textWidthBasis: textWidthBasis,
            useHideValueGlobal: useHideValueGlobal,
          );
        }
      );
    }
    return OwTextWidget(
      convertStringAlls(text, additionals: arguments),
      arguments: arguments,
      hideAllText: hideAllText,
      hideValue: hideValue,
      key: key,
      locale: locale,
      maxLines: maxLines,
      overflow: overflow,
      padding: padding,
      selectionColor: selectionColor,
      semanticsLabel: semanticsLabel,
      softWrap: softWrap,
      strutStyle: strutStyle,
      style: style,
      textAlign: textAlign,
      textDirection: textDirection,
      textHeightBehavior: textHeightBehavior,
      textScaleFactor: textScaleFactor,
      textWidthBasis: textWidthBasis,
      useHideValueGlobal: useHideValueGlobal,
    );
  }
}
