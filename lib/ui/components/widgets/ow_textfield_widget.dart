import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

// ignore: must_be_immutable
class OwTextField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final String? errorText;
  final String? helperText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;
  final ValueChanged<String>? onChanged;
  final Function()? onTap;
  final FormFieldSetter<String>? onSaved;
  final int? maxLength;
  final int? minLines;
  final int? maxLines;
  final EdgeInsets? margin;
  final bool enabled;
  final bool enableInteractiveSelection;
  final bool autofocus;
  final bool obscureText;
  final bool readOnly;
  final bool hideBorder;
  /// If null, it will be [TextCapitalization.sentences]
  final TextCapitalization? textCapitalization;
  final String? counterText;
  final Color? color;
  final Color? colorText;
  final List<TextInputFormatter>? inputFormatters;
  final String? suffixText;
  final String? prefixText;
  final List<dynamic>? suggestionsList;
  final bool ignoreAccentsOnSuggestion;
  final bool caseSensitiveOnSuggestion;
  final TextFieldType? fieldType;
  final bool updateMask;
  final bool outlined;
  final bool large;
  final bool? unfocusIfNoNextFocusNode;
  final List<FocusNode>? focusNodeList;
  final int? focusNodeIndex;
  final ValueChanged<String>? onSuggestionSelected;
  final bool? automaticFocusWithFocusNodeList;
  final bool? repeatItemsOnSuggestionList;
  final Widget? suggestionListTileTrailing;
  final double radius;
  final double widthBorder;
  final InputDecoration? decoration;

  static const String assertMsgFocusNodeList = "If you are using 'focusNodeList', you need to pass its position with 'focusNodeIndex'";

  OwTextField({
    Key? key,
    this.controller,
    this.fieldType,
    this.labelText,
    this.hintText,
    this.helperText,
    this.errorText,
    this.keyboardType = TextInputType.text,
    this.textInputAction,
    this.textCapitalization,
    this.obscureText = false,
    this.readOnly = false,
    this.autofocus = false,
    this.outlined = false,
    this.large = false,
    this.hideBorder = false,
    this.enabled = true,
    this.onFieldSubmitted,
    this.focusNode,
    this.onChanged,
    this.onTap,
    this.counterText,
    this.maxLength,
    this.minLines = 1,
    this.maxLines,
    this.margin,
    this.prefixText,
    this.suffixText,
    this.suffixIcon,
    this.enableInteractiveSelection = true,
    this.color,
    this.colorText,
    this.inputFormatters,
    this.onSaved,
    this.validator,
    this.nextFocusNode,
    this.unfocusIfNoNextFocusNode = true,
    this.focusNodeList,
    this.focusNodeIndex,
    this.automaticFocusWithFocusNodeList = true,
    bool updateMaskOnFieldType = true,
    this.radius = 0,
    this.widthBorder = 0,
    this.decoration,
  }): suggestionsList = null,
      ignoreAccentsOnSuggestion = false,
      caseSensitiveOnSuggestion = false,
      onSuggestionSelected = null,
      repeatItemsOnSuggestionList = null,
      updateMask = updateMaskOnFieldType,
      suggestionListTileTrailing = null,
      assert(
        (focusNodeList == null && focusNodeIndex == null) || (focusNodeList != null && focusNodeIndex != null), 
        assertMsgFocusNodeList,
      ),
      super(key: key);

  OwTextField.withSuggestions({
    Key? key,
    this.controller,
    this.labelText,
    this.hintText,
    this.helperText,
    this.errorText,
    this.keyboardType = TextInputType.text,
    this.textInputAction,
    this.textCapitalization,
    this.obscureText = false,
    this.enabled = true,
    this.onFieldSubmitted,
    this.focusNode,
    this.onChanged,
    this.onTap,
    this.counterText,
    this.maxLength,
    this.minLines = 1,
    this.maxLines,
    this.margin,
    this.prefixText,
    this.suffixText,
    this.enableInteractiveSelection = true,
    this.suffixIcon,
    this.color,
    this.colorText,
    this.suggestionsList,
    this.inputFormatters,
    this.outlined = false,
    this.large = false,
    this.hideBorder = false,
    this.autofocus = false,
    this.readOnly = false,
    this.nextFocusNode,
    this.ignoreAccentsOnSuggestion = true,
    this.caseSensitiveOnSuggestion = false,
    this.unfocusIfNoNextFocusNode = true,
    this.focusNodeList,
    this.focusNodeIndex,
    this.automaticFocusWithFocusNodeList = true,
    this.onSuggestionSelected,
    this.repeatItemsOnSuggestionList = false,
    this.suggestionListTileTrailing = const Icon(Icons.touch_app_outlined),
    this.radius = 0,
    this.widthBorder = 0,
    this.decoration,
  }) : fieldType = null,
      onSaved = null,
      validator = null,
      updateMask = false,
      assert(suggestionListTileTrailing != null),
      assert(suggestionsList != null),
      assert(
        (focusNodeList == null && focusNodeIndex == null) || (focusNodeList != null && focusNodeIndex != null), 
        assertMsgFocusNodeList,
      ),
      super(key: key);

  TextInputType? _keyboardType;
  List<TextInputFormatter>? _inputFormatters;
  TextCapitalization? _textCapitalization;
  Function? _goToNextFocusNode;
  FocusNode? _nextFocusNode;
  TextInputAction _textInputAction = TextInputAction.next;
  FocusNode? _focusNode;
  ValueChanged<String>? _changeMask;
  Widget? _suffixIcon;
  int? _minLines, _maxLines;
  String? _prefixText;

  @override
  Widget build(BuildContext context) {
    changeTextFieldType(context);
    defineFocusNode(context);
    defineMinAndMaxLines();
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(radius)),
      child: Container(
        key: key,
        margin: margin,
        child: _textField(context),
      ),
    );
  }

  Widget _textField(BuildContext context) {
    if(suggestionsList == null || (suggestionsList?.isEmpty ?? true)) {
      return TextFormField(
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: colorText ?? Theme.of(context).colorScheme.outline,
          fontSize: large ? 35 : 18,
        ),
        textAlignVertical: TextAlignVertical.top,
        inputFormatters: inputFormatters ?? _inputFormatters,
        keyboardType: keyboardType,
        textCapitalization: textCapitalization ?? _textCapitalization ?? TextCapitalization.sentences,
        minLines: minLines ?? _minLines,
        maxLines: maxLines ?? _maxLines,
        enabled: enabled,
        enableInteractiveSelection: enableInteractiveSelection,
        decoration: _defineTextFieldStyle(context),
        onTap: onTap,
        onSaved: onSaved,
        onChanged: (value) {
          onChanged?.call(value);
          _changeMask?.call(value);
        },
        maxLength: maxLength,
        readOnly: readOnly,
        validator: validator,
        controller: controller,
        textInputAction: textInputAction ?? _textInputAction,
        onFieldSubmitted: (_) {
          onFieldSubmitted?.call(_);
          _goToNextFocusNode?.call();
        },
        enableSuggestions: true,
        focusNode: _focusNode,
        obscureText: obscureText,
        autofocus: autofocus,
      );
    } else {
      return TypeAheadField(
        suggestionsBoxDecoration: SuggestionsBoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          color: Theme.of(context).colorScheme.surfaceVariant,
        ),
        autoFlipDirection: true,
        hideOnLoading: false,
        textFieldConfiguration: TextFieldConfiguration(
          autofocus: autofocus,
          controller: controller,
          keyboardType: keyboardType ?? _keyboardType ?? TextInputType.text,
          textInputAction: textInputAction ?? _textInputAction,
          textCapitalization: textCapitalization ?? TextCapitalization.none,
          obscureText: obscureText,
          enabled: enabled,
          enableInteractiveSelection: enableInteractiveSelection,
          decoration: _defineTextFieldStyle(context),
          onSubmitted: (_) {
            onFieldSubmitted?.call(_);
            _goToNextFocusNode?.call();
          },
          focusNode: _focusNode,
          onChanged: onChanged,
          onTap: onTap,
          maxLength: maxLength,
          minLines: minLines,
          maxLines: maxLines,
          inputFormatters: inputFormatters,
        ),
        suggestionsCallback: (string) {
          return _getSuggestionsList(string);
        },
        noItemsFoundBuilder: (_) {
          return const Text("Nenhum item encontrado");
        },
        itemBuilder: (context, suggestion) {
          return ListTile(
            title: Text(
              suggestion.toString(),
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            trailing: suggestionListTileTrailing,
          );
        },
        onSuggestionSelected: (suggestion) {
          onSuggestionSelected?.call(suggestion?.toString() ?? "");
          if(controller != null) {
            controller!.text = suggestion?.toString() ?? "";
          }
        },
      );
    }
  }

  InputDecoration _defineTextFieldStyle(BuildContext context) {
    return decoration ?? InputDecoration(
      filled: true,
      isDense: true,
      fillColor: color ?? Theme.of(context).colorScheme.background,
      prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
      labelText: labelText,
      hintText: hintText,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      errorText: errorText,
      labelStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: Theme.of(context).colorScheme.onBackground,
        fontSize: 15,
      ),
      counterText: counterText,
      hintStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: colorText ?? Theme.of(context).colorScheme.outline,
        fontSize: large ? 35 : 18,
      ),
      alignLabelWithHint: true,
      border: hideBorder ? InputBorder.none : UnderlineInputBorder(
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.outline,
          width: widthBorder,
        ),
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      ),
      focusedBorder: hideBorder ? InputBorder.none : UnderlineInputBorder(
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.outline,
          width: widthBorder,
        ),
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      ),
      enabledBorder: hideBorder ? InputBorder.none : UnderlineInputBorder(
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.outline,
          width: widthBorder,
        ),
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 0, 
        vertical: 12,
      ),
      helperText: helperText,
      helperMaxLines: 3,
      floatingLabelAlignment: FloatingLabelAlignment.start,
      prefixStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: colorText ?? Theme.of(context).colorScheme.outline,
        fontSize: large ? 35 : 18,
      ),
      suffixText: suffixText,
      prefixText: prefixText ?? _prefixText,
      suffixIcon: suffixIcon ?? _suffixIcon,
    );
  }

  void changeTextFieldType(BuildContext context) {
    void updateMaskFunction(String mask) {
      try{
        if(updateMask) {
          (controller as MaskedTextController).updateMask(mask);
        }
      } catch (e) {
        //
      }
    }

    if(fieldType != null) {
      const String assertMsgMaskedTextController = "'controller' is not MaskedTextController";
      switch(fieldType!.type) {
        case TextFieldMaskType.name:
          _keyboardType = TextInputType.name;
          _textCapitalization = TextCapitalization.words;
          break;

        case TextFieldMaskType.email:
          _keyboardType = TextInputType.emailAddress;
          _textCapitalization = TextCapitalization.none;
          break;

        case TextFieldMaskType.password: // ? Ver se dá para melhorar
          _keyboardType = TextInputType.visiblePassword;
          _textCapitalization = TextCapitalization.none;
          // _obscureText = true;
          break;

        case TextFieldMaskType.multiText: // ? Ver se dá para melhorar
          _keyboardType = TextInputType.multiline;
          _textInputAction = TextInputAction.newline;
          _minLines = 2;
          _maxLines = 12;
          break;

        case TextFieldMaskType.cep:
          _keyboardType = TextInputType.phone;
          updateMaskFunction(MaskType.cep);
          break;

        case TextFieldMaskType.search: // ? Ver se dá para melhorar
          _keyboardType = TextInputType.text;
          _textInputAction = TextInputAction.search;
          break;

        case TextFieldMaskType.cardNumber:
          _keyboardType = TextInputType.phone;
          updateMaskFunction(MaskType.cardNumber);
          break;

        case TextFieldMaskType.cardCvv:
          _keyboardType = TextInputType.phone;
          updateMaskFunction(MaskType.cardCvv);
          break;

        case TextFieldMaskType.cardDateYY:
          _keyboardType = TextInputType.phone;
          updateMaskFunction(MaskType.cardDateYY);
          break;

        case TextFieldMaskType.cardDateYYYY:
          _keyboardType = TextInputType.phone;
          updateMaskFunction(MaskType.cardDateYYYY);
          break;

        case TextFieldMaskType.date: // ? Talvez um ícone pra abrir um datePick
          _keyboardType = TextInputType.datetime;
          updateMaskFunction(MaskType.date);
          break;

        case TextFieldMaskType.dateTime: // ? Talvez um ícone pra abrir um datePick
          _keyboardType = TextInputType.datetime;
          updateMaskFunction(fieldType?.mask ?? MaskType.dateTime);
          break;

        case TextFieldMaskType.time: // ? Talvez um ícone pra abrir tipo um datePick de horário
          _keyboardType = TextInputType.datetime;
          updateMaskFunction(MaskType.time);
          break;

        case TextFieldMaskType.cpf:
          _keyboardType = TextInputType.phone;
          updateMaskFunction(MaskType.cpf);
          break;

        case TextFieldMaskType.cnpj:
          _keyboardType = TextInputType.phone;
          updateMaskFunction(MaskType.cnpj);
          break;
        
        case TextFieldMaskType.cpfCnpj:
          assert(controller is MaskedTextController, assertMsgMaskedTextController);
          _keyboardType = TextInputType.phone;
          String cpfMask = "${MaskType.cpf}0";
          _changeMask = (_) {
            if(
              (controller?.text.length ?? 0) <= MaskType.cpf.length && 
              (controller as MaskedTextController).mask != cpfMask
            ) {
              (controller as MaskedTextController).updateMask(cpfMask);
            } else if(
              (controller?.text.length ?? 0) > MaskType.cpf.length && 
              (controller as MaskedTextController).mask != MaskType.cnpj
            ) {
              (controller as MaskedTextController).updateMask(MaskType.cnpj);
            }
          };
          if(_changeMask != null) {
            _changeMask!(controller?.text ?? "");
          }
          break;

        case TextFieldMaskType.landlineCell:
          assert(controller is MaskedTextController, assertMsgMaskedTextController);
          _keyboardType = TextInputType.phone;
          String landlineMask = "${MaskType.phones(10)}0";
          _changeMask = (_) {
            if(
              (controller?.text.length ?? 0) <= MaskType.phones(10).length && 
              (controller as MaskedTextController).mask != landlineMask
            ) {
              (controller as MaskedTextController).updateMask(landlineMask);
            } else if(
              (controller?.text.length ?? 0) > MaskType.phones(10).length && 
              (controller as MaskedTextController).mask != MaskType.phones(11)
            ) {
              (controller as MaskedTextController).updateMask(MaskType.phones(11));
            }
          };
          if(_changeMask != null) {
            _changeMask!(controller?.text ?? "");
          }
          break;
        case TextFieldMaskType.phones:
          assert(controller is MaskedTextController, assertMsgMaskedTextController);
          _keyboardType = TextInputType.phone;
          if(fieldType?.quantity != null) {
            (controller as MaskedTextController).updateMask(MaskType.phones(fieldType?.quantity ?? 0));
          } else {
            // ! Terminar
          }
          break;

        case TextFieldMaskType.money:
          _prefixText = "${fieldType?.symbol} ";
          _keyboardType = TextInputType.phone;
          break;

        case TextFieldMaskType.integer: // ? Melhorar: Talvez colocar pra ter um número inteiro máximo que pode ser digitado (ex: até 9926)
          assert(controller is MaskedTextController, assertMsgMaskedTextController);
          _keyboardType = TextInputType.phone;
          int zerosQuantity = fieldType?.min?.toInt() ?? 0;
          bool minMaxEqual = fieldType?.min == fieldType?.max;
          (controller as MaskedTextController).updateMask(MaskType.integer(
            minMaxEqual
              ? (fieldType?.max?.toInt() ?? 0) + 1
              : fieldType?.max?.toInt() ?? 0,
          ));
          _changeMask = (value) {
            int integer = int.tryParse(controller?.text ?? "0") ?? 0;
            if(integer != 0) {
              int i = 0;
              for(; i < value.length; i++) {
                if(value[i] != "0") {
                  break;
                }
              }
              if(controller?.text[0] != "0") {
                (controller as MaskedTextController).updateText(value.substring(i));
              }
            } else if(integer == 0) {
              (controller as MaskedTextController).updateText("0" * zerosQuantity);
            }
            if((controller?.text.length ?? 0) < zerosQuantity) {
              (controller as MaskedTextController).updateText("0" * (zerosQuantity - (controller?.text.length ?? 0)) + (controller?.text ?? ""));
            }

            if(minMaxEqual) {
              (controller as MaskedTextController).updateText(controller?.text.substring(0, int.tryParse((fieldType?.min ?? 0).toString())) ?? "");
            }
          };
          if(_changeMask != null) {
            _changeMask!(controller?.text ?? "");
          }
          break;

        case TextFieldMaskType.decimal:
          // assert(controller is MoneyMaskedTextController);
          _keyboardType = TextInputType.phone;
          break;

        case TextFieldMaskType.chat: // ? Ver se dá para melhorar
          _keyboardType = TextInputType.multiline;
          _textInputAction = TextInputAction.newline;
          _minLines = 2;
          _maxLines = 12;
          // _suffixIcon = ...;
          break;
      }
    }
  }

  void defineFocusNode(BuildContext context) {
    _focusNode = focusNode ?? FN.getFnByList(focusNodeList ?? [], focusNodeIndex ?? 0);
    _nextFocusNode = nextFocusNode ?? FN.getNextFnByList(focusNodeList ?? [], focusNodeIndex ?? 0);

    if(_nextFocusNode != null) {
      _textInputAction = TextInputAction.next;
      if(automaticFocusWithFocusNodeList ?? true) {
        _goToNextFocusNode = () {
          FN.nextFn(context, _nextFocusNode!);
        };
      }
    } else {
      _textInputAction = TextInputAction.done;
      if((unfocusIfNoNextFocusNode ?? true) && (automaticFocusWithFocusNodeList ?? true)) {
        _goToNextFocusNode = () {
          FN.unfocusFn(context);
        };
      }
    }
  }

  List<dynamic> _getSuggestionsList(String string) {
    List<dynamic> suggestions = suggestionsList ?? [];
    var result = suggestions.where((element) {
      String item = element.toString();
      String word = string.toString();
      if(!caseSensitiveOnSuggestion) {
        item = item.toLowerCase();
        word = word.toLowerCase();
      }
      if(ignoreAccentsOnSuggestion) {
        item = OwFormat.removeAccentAndPonctuation(item, useLowerCase: false);
        word = OwFormat.removeAccentAndPonctuation(word, useLowerCase: false);
      }
      return item.contains(word);
    });

    return repeatItemsOnSuggestionList ?? false
      ? result.toList()
      : result.toSet().toList();
  }

  void defineMinAndMaxLines() {
    _minLines = minLines ?? 1;
    _maxLines = maxLines ?? 1;

    if(_minLines! > _maxLines!) {
      _maxLines = _minLines;
    }
  }
}