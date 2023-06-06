import 'package:flutter/material.dart';

class OwButton extends StatelessWidget {
  final String? labelText;
  final bool autoFocus;
  final bool center;
  final bool enable;
  final bool outline;
  final bool secondary;
  final bool mainButton;
  final bool text;
  final bool elevated;
  final bool enableFeedback;
  final Function()? onPressed;
  final Function()? onLongPressed;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final Color? color;
  final Color? foregroundColor;
  final Widget? child;
  final double? elevation;
  final double radius;
  final double? height;
  final Size? minimumSize;
  final TextStyle? textStyle;
  final IconData? leading;
  final IconData? trailing;
  final FocusNode? focusNode;
  final bool absorbedPointer;
  final bool ignoredPointer;
  final bool toUpperCase;
  final bool expanded;

  const OwButton({
    Key? key,
    this.labelText,
    this.autoFocus = false,
    this.enable = true,
    this.enableFeedback = false,
    this.center = true,
    this.onPressed,
    this.onLongPressed,
    this.margin,
    this.padding,
    this.child,
    this.elevation = 0,
    this.radius = 80,
    this.height = 40,
    this.minimumSize,
    this.textStyle,
    this.leading,
    this.trailing,
    this.focusNode,
    this.absorbedPointer = false,
    this.toUpperCase = false,
    this.ignoredPointer = false,
    this.expanded = false,
  })  : assert(!ignoredPointer || !absorbedPointer),
        outline = false,
        mainButton = true,
        text = false,
        secondary = false,
        elevated = false,
        color = null,
        foregroundColor = null,
        super(key: key);

  const OwButton.secondary({
    Key? key,
    this.labelText,
    this.autoFocus = false,
    this.enable = true,
    this.enableFeedback = false,
    this.center = true,
    this.onPressed,
    this.onLongPressed,
    this.margin,
    this.padding,
    this.child,
    this.elevation = 0,
    this.radius = 80,
    this.height = 40,
    this.minimumSize,
    this.textStyle,
    this.leading,
    this.trailing,
    this.focusNode,
    this.absorbedPointer = false,
    this.toUpperCase = false,
    this.ignoredPointer = false,
    this.expanded = false,
  })  : assert(!ignoredPointer || !absorbedPointer),
        outline = false,
        mainButton = false,
        text = false,
        secondary = true,
        elevated = false,
        color = null,
        foregroundColor = null,
        super(key: key);

  const OwButton.outline({
    Key? key,
    this.labelText,
    this.autoFocus = false,
    this.enable = true,
    this.enableFeedback = false,
    this.center = true,
    this.onPressed,
    this.onLongPressed,
    this.margin,
    this.padding,
    this.child,
    this.elevation = 0,
    this.radius = 80,
    this.height = 40,
    this.minimumSize,
    this.textStyle,
    this.leading,
    this.trailing,
    this.focusNode,
    this.absorbedPointer = false,
    this.toUpperCase = false,
    this.ignoredPointer = false,
    this.expanded = false,
  })  : assert(!ignoredPointer || !absorbedPointer),
        outline = true,
        mainButton = false,
        text = false,
        secondary = false,
        elevated = false,
        color = null,
        foregroundColor = null,
        super(key: key);

  const OwButton.text({
    Key? key,
    this.labelText,
    this.autoFocus = false,
    this.enable = true,
    this.enableFeedback = false,
    this.center = true,
    this.onPressed,
    this.onLongPressed,
    this.margin,
    this.padding,
    this.child,
    this.elevation = 0,
    this.radius = 80,
    this.height = 40,
    this.minimumSize,
    this.textStyle,
    this.leading,
    this.trailing,
    this.focusNode,
    this.absorbedPointer = false,
    this.toUpperCase = false,
    this.ignoredPointer = false,
    this.expanded = false,
  })  : assert(!ignoredPointer || !absorbedPointer),
        outline = false,
        mainButton = false,
        text = true,
        secondary = false,
        elevated = false,
        color = null,
        foregroundColor = null,
        super(key: key);

  const OwButton.elevated({
    Key? key,
    this.labelText,
    this.autoFocus = false,
    this.enable = true,
    this.enableFeedback = false,
    this.center = true,
    this.onPressed,
    this.onLongPressed,
    this.margin,
    this.foregroundColor,
    this.padding,
    this.child,
    this.elevation = 0,
    this.radius = 80,
    this.height = 40,
    this.minimumSize,
    this.textStyle,
    this.leading,
    this.trailing,
    this.focusNode,
    this.absorbedPointer = false,
    this.toUpperCase = false,
    this.ignoredPointer = false,
    this.expanded = false,
  })  : assert(!ignoredPointer || !absorbedPointer),
        outline = false,
        mainButton = false,
        text = true,
        secondary = false,
        elevated = true,
        color = null,
        super(key: key);

  const OwButton.dynamic({
    Key? key,
    this.labelText,
    this.autoFocus = false,
    this.enable = true,
    this.enableFeedback = false,
    this.center = true,
    this.onPressed,
    this.onLongPressed,
    this.margin,
    this.color,
    this.foregroundColor,
    this.padding,
    this.child,
    this.elevation = 0,
    this.radius = 80,
    this.height = 40,
    this.minimumSize,
    this.textStyle,
    this.leading,
    this.trailing,
    this.focusNode,
    this.absorbedPointer = false,
    this.toUpperCase = false,
    this.ignoredPointer = false,
    this.expanded = false,
    this.elevated = false,
    this.outline = false,
  })  : assert(!ignoredPointer || !absorbedPointer),
        mainButton = true,
        text = false,
        secondary = false,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ignoredPointer
        ? IgnorePointer(
            child: _button(context),
          )
        : absorbedPointer
            ? AbsorbPointer(
                child: _button(context),
              )
            : _button(context);
  }

  Widget _button(BuildContext context) {
    return Container(
      key: key,
      width: expanded ? MediaQuery.sizeOf(context).width : null,
      constraints: BoxConstraints(
        minHeight: height ?? 40,
        minWidth: 60,
        maxWidth: MediaQuery.sizeOf(context).width,
      ),
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
        color: Colors.transparent,
      ),
      child: ElevatedButton(
        autofocus: autoFocus,
        style: ButtonStyle(
          foregroundColor: enable
              ? foregroundColor != null
                  ? MaterialStateProperty.all(foregroundColor)
                  : mainButton
                      ? MaterialStateProperty.all(
                          Theme.of(context).colorScheme.onPrimary)
                      : secondary
                          ? MaterialStateProperty.all(Theme.of(context)
                              .colorScheme
                              .onSecondaryContainer)
                          : outline
                              ? MaterialStateProperty.all(
                                  Theme.of(context).colorScheme.primary)
                              : elevated
                                  ? MaterialStateProperty.all(
                                      Theme.of(context).colorScheme.primary)
                                  : MaterialStateProperty.all(
                                      Theme.of(context).colorScheme.primary)
              : MaterialStateProperty.all(
                  Theme.of(context).colorScheme.onSurfaceVariant),
          padding: MaterialStateProperty.all(
            padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          ),
          backgroundColor: enable
              ? color != null
                  ? MaterialStateProperty.all(
                      outline ? Colors.transparent : (color!))
                  : mainButton
                      ? MaterialStateProperty.all(
                          Theme.of(context).colorScheme.primary)
                      : secondary
                          ? MaterialStateProperty.all(
                              Theme.of(context).colorScheme.secondaryContainer)
                          : outline
                              ? MaterialStateProperty.all(
                                  Theme.of(context).colorScheme.background)
                              : elevated
                                  ? MaterialStateProperty.all(
                                      Theme.of(context).colorScheme.surface)
                                  : MaterialStateProperty.all(
                                      Theme.of(context).colorScheme.background)
              : MaterialStateProperty.all(
                  Theme.of(context).colorScheme.surfaceVariant),
          elevation: MaterialStateProperty.all(elevated && enable ? 1 : 0),
          textStyle: MaterialStateProperty.all(textStyle),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
              side: BorderSide(
                color: enable
                    ? color != null
                        ? (color!)
                        : mainButton
                            ? Theme.of(context).colorScheme.primary
                            : secondary
                                ? Theme.of(context)
                                    .colorScheme
                                    .secondaryContainer
                                : outline
                                    ? Theme.of(context).colorScheme.primary
                                    : elevated
                                        ? (Colors.transparent)
                                        : (Theme.of(context)
                                            .colorScheme
                                            .background)
                    : Theme.of(context).colorScheme.surfaceVariant,
                width: 1,
              ),
            ),
          ),
          enableFeedback: enableFeedback,
        ),
        onPressed: enable ? onPressed : null,
        onLongPress: enable ? onLongPressed : null,
        focusNode: focusNode,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            leading != null
                ? Container(
                    margin: const EdgeInsets.only(
                      right: 8,
                    ),
                    child: Icon(
                      leading,
                      size: 18,
                    ),
                  )
                : const SizedBox(),
            labelText != null && labelText!.isNotEmpty
                ? _text(context)
                : _child(context),
            trailing != null
                ? Container(
                    margin: const EdgeInsets.only(
                      left: 8,
                    ),
                    child: Icon(
                      trailing,
                      size: 18,
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }

  Widget _text(context) {
    if (expanded) {
      return Expanded(child: _textLabel(context));
    }
    return Flexible(child: _textLabel(context));
  }

  Widget _textLabel(context) {
    return Text(
      toUpperCase ? "$labelText".toUpperCase() : "$labelText",
      textAlign: center ? TextAlign.center : TextAlign.start,
      style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: enable
                ? foregroundColor != null
                    ? (foregroundColor)
                    : mainButton
                        ? (Theme.of(context).colorScheme.onPrimary)
                        : secondary
                            ? (Theme.of(context)
                                .colorScheme
                                .onSecondaryContainer)
                            : outline
                                ? (Theme.of(context).colorScheme.primary)
                                : elevated
                                    ? (Theme.of(context).colorScheme.primary)
                                    : (Theme.of(context).colorScheme.primary)
                : (Theme.of(context).colorScheme.onSurfaceVariant),
          ),
    );
  }

  Widget _child(context) {
    if (expanded) {
      return Expanded(child: _getChild(context));
    }
    return Flexible(child: _getChild(context));
  }

  Widget _getChild(context) {
    if (!center) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [child ?? const SizedBox()],
      );
    }
    return child ?? const SizedBox();
  }
}
