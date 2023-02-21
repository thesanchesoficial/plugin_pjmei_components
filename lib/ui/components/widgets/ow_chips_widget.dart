import 'package:flutter/material.dart';

class OwChipWidget extends StatelessWidget {
  final IconData? leading;
  final IconData? trailing;
  final String? label;
  final bool assist;
  final bool filter;
  final bool input;
  final bool suggestion;
  final bool choice;
  final bool? selected;
  final bool? showCheckmark;
  final Color? iconColor;
  final void Function(bool)? onSelected;
  final void Function()? onDeleted;
  final void Function()? onPressed;

  const OwChipWidget.assist({
    super.key,
    this.leading,
    this.trailing,
    this.iconColor,
    this.label,
    this.onPressed,
  })  : onSelected = null,
        onDeleted = null,
        selected = null,
        showCheckmark = false,
        assist = true,
        filter = false,
        input = false,
        choice = false,
        suggestion = false;

  const OwChipWidget.filter({
    super.key,
    this.leading,
    this.trailing,
    this.iconColor,
    this.label,
    required this.onSelected,
    this.selected = false,
    this.onPressed,
    this.showCheckmark = true})
    : onDeleted = null,
      assist = false,
      filter = true,
      input = false,
      choice = false,
      suggestion = false;

  const OwChipWidget.input({
    super.key,
    this.leading,
    this.trailing,
    this.iconColor,
    this.label,
    this.onPressed,
    this.onDeleted,
    this.onSelected,
    this.selected = false,
    this.showCheckmark = true})
    : assist = false,
      filter = false,
      input = true,
      choice = false,
      suggestion = false;

  const OwChipWidget.suggestion({
    super.key,
    this.leading,
    this.trailing,
    this.iconColor,
    this.label,
    this.onPressed,
  })  : onSelected = null,
        onDeleted = null,
        selected = null,
        showCheckmark = false,
        assist = false,
        filter = false,
        input = false,
        choice = false,
        suggestion = true;

  const OwChipWidget.choice({
    super.key,
    this.leading,
    this.trailing,
    this.iconColor,
    this.label,
    this.onSelected,
    this.selected = false,
  })  : onPressed = null,
        onDeleted = null,
        showCheckmark = false,
        assist = false,
        filter = false,
        input = false,
        choice = true,
        suggestion = false;

  @override
  Widget build(BuildContext context) {
    if (assist) {
      return ActionChip(
        label: label == null ? const SizedBox() : Text(label!),
        onPressed: onPressed,
        avatar: leading == null ? null : Icon(leading, color: iconColor),
      );
    } else if (filter) {
      return FilterChip(
        label: label == null ? const SizedBox() : Text(label!),
        selected: selected!,
        onSelected: onSelected,
        avatar: leading == null
            ? null
            : Icon(
                leading,
                color: iconColor ?? Theme.of(context).colorScheme.onBackground,
              ),
        showCheckmark: showCheckmark,
      );
    } else if (input) {
      return InputChip(
        selected: selected!,
        onSelected: onSelected,
        onDeleted: onDeleted,
        onPressed: onPressed,
        label: label == null ? const SizedBox() : Text(label!),
        avatar: leading == null ? null : Icon(leading, color: iconColor),
        showCheckmark: showCheckmark,
      );
    } else if (suggestion) {
      return ActionChip(
        label: label == null ? const SizedBox() : Text(label!),
        onPressed: onPressed,
        avatar: leading == null ? null : Icon(leading, color: iconColor),
      );
    } else if (choice) {
      return ChoiceChip(
        label: label == null ? const SizedBox() : Text(label!),
        selected: selected!,
        onSelected: onSelected,
        avatar: leading == null ? null : Icon(leading, color: iconColor),
      );
    }
    return const SizedBox();
  }
}
