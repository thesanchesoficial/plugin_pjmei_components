import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class OwDropdown extends StatelessWidget {
  final String? value;
  final bool isExpanded;
  final String? labelText;
  final bool readOnly;
  final void Function(String?)? onChanged;
  final Function? onTap;
  final EdgeInsets? margin;
  final FocusNode? focusNode;
  final List<String>? optionsList;
  final Color? color;
  final bool enabled;
  final Widget? disabledHint;
  final Widget? hint;
  final String? hintText;
  final DropdownType? dropdownType;

  static const Color errorColor = Colors.red;
  static const String assertMsgOptionsAndType ="'dropdownType' already define a 'optionsList'";

  const OwDropdown({
    Key? key,
    this.labelText,
    this.readOnly = false,
    this.onChanged,
    this.onTap,
    this.margin,
    this.value,
    this.focusNode,
    this.optionsList,
    this.color,
    this.enabled = true,
    this.isExpanded = false,
    this.disabledHint,
    this.hint,
    this.hintText,
  }) : dropdownType = null,
    super(key: key);
  
  const OwDropdown.type({
    Key? key,
    this.labelText,
    this.readOnly = false,
    this.onChanged,
    this.onTap,
    this.margin,
    this.value,
    this.focusNode,
    this.color,
    this.enabled = true,
    this.isExpanded = false,
    this.disabledHint,
    this.hint,
    this.hintText,
    required this.dropdownType,
  }) : optionsList = null,
    super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> optionsListTemp = [];
    optionsListTemp = changeDropdownType(context);
    if (optionsListTemp.isEmpty) {
      optionsListTemp = optionsList ?? [];
    }
    return Container(
      key: key,
      margin: margin,
      child: DropdownButtonFormField(
        focusNode: focusNode,
        isExpanded: isExpanded,
        disabledHint: disabledHint,
        hint: hint ?? (hintText != null ? Text(hintText!) : null),
        decoration: InputDecoration(
          filled: true,
          fillColor: color ?? Theme.of(context).cardColor,
          labelText: labelText,
          alignLabelWithHint: false,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).secondaryHeaderColor,
              width: 1,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              borderSide:
                  BorderSide(color: Theme.of(context).secondaryHeaderColor)),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            borderSide:
                BorderSide(color: Theme.of(context).secondaryHeaderColor),
          ),
          contentPadding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 15,
            bottom: 14,
          ),
          // labelStyle: TextStyle(
          //   color: Theme.of(context).primaryTextTheme.bodyText1.color,
          // ),
          // errorBorder: UnderlineInputBorder(
          //   borderRadius: const BorderRadius.all(Radius.circular(10)),
          //   borderSide: BorderSide(color: Theme.of(context).errorColor),
          // ),
          // errorStyle: TextStyle(color: Theme.of(context).errorColor),
        ),
        value: value,
        onChanged: enabled ? onChanged : null,
        items: optionsListTemp.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }

  List<String> changeDropdownType(BuildContext context) {
    List<String> optionsListTemp = [];
    if (dropdownType != null) {
      bool removeSomeItems = false;

      switch (dropdownType!.type) {
        case OwDropdownType.bankAccountType:
          optionsListTemp = StandardConfig.bankAccountTypes;
          break;

        case OwDropdownType.genders:
          optionsListTemp = StandardConfig.genders;
          removeSomeItems = true;
          break;

        case OwDropdownType.integer:
          optionsListTemp = [];
          for (num i = (dropdownType!.min ?? 0);
              i <= (dropdownType!.max ?? 0);
              i += (dropdownType!.step ?? 0)) {
            optionsListTemp.add("$i");
          }
          break;

        case OwDropdownType.decimal:
          optionsListTemp = [];
          for (num i = (dropdownType!.min ?? 0);
              i <= (dropdownType!.max ?? 0);
              i += (dropdownType!.step ?? 0)) {
            optionsListTemp.add((i).toStringAsFixed(dropdownType!.places ?? 0));
          }
          break;

        case OwDropdownType.months:
          optionsListTemp = StandardConfig.months;
          removeSomeItems = true;
          break;

        case OwDropdownType.weekDays:
          optionsListTemp = StandardConfig.weekDays;
          removeSomeItems = true;
          break;
      }

      if (removeSomeItems) {
        for (int i = 0;
            i < (dropdownType!.activatedItemsList?.length ?? 0);
            i++) {
          if (!dropdownType!.activatedItemsList![i]) {
            optionsListTemp.removeAt(i);
          }
        }
      }
    } else {
      optionsListTemp = optionsList ?? [];
    }
    return optionsListTemp;
  }
}
