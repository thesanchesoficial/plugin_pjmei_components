import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
// "Matheus Sanches criou esse widget especial" // certo
// "Matheus Sanches criou esse {{widget}} especial" = oculta o valor entre {} // certo
// "Matheus Sanches criou esse ((widget)) especial" = muda para variavel com esse nome
// "Matheus Sanches criou esse [[widget]] especial" = muda para cor primaria
// "Matheus Sanches criou esse **widget** especial" = muda para negrito

// "Matheus {{Sanches}} tinha {{R\$ 2 reais}} do {{troco de pão}}" // certo
// "{Matheus {Sanch{{es}} tin}h}a {{R\$ 2 reais}} do {{troco de pão}}" // certo
// "Matheus {Sanch{{es}} tin}}ha {{R\$ 2 reais}} do {{troco de pão}}" // certo
// "{Mat{{h}}eus {{Sanches}} tinha {{R\$ 2 reais}} do {{troco de pão}}}}}" // certo

class OwText extends StatelessWidget {
  final String? text;
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

  @override
  Widget build(BuildContext context) {
    String textTemp = "";
    bool containsSecret = false;
    
    textTemp = convertString(text ?? "", additionals: {});

    if(textTemp.contains("{{") && textTemp.contains("}}")) {
      containsSecret = true;
    }

    return t(
      hideValue,
      containsSecret: containsSecret,
      textTemp: textTemp,
    );
  }

  t(bool s, {required bool containsSecret, required String textTemp}) {
    if (containsSecret && !hideAllText) {
      String temp = _hideValue(s, textTemp);
      temp = _boldValue(s, temp);
      if(!s) {
        return _text(temp);
      }
      return Container(
        padding: padding ?? EdgeInsets.zero,
        child: RichText(
          text: TextSpan(
            style: style,
            locale: locale,
            text: temp,
            semanticsLabel: semanticsLabel,
          ),
          maxLines: maxLines,
          locale: locale,
          overflow: overflow,
          softWrap: softWrap,
          textAlign: textAlign,
          textWidthBasis: textWidthBasis,
          textHeightBehavior: textHeightBehavior,
          textScaleFactor: textScaleFactor,
          textDirection: textDirection,
          strutStyle: strutStyle,
          selectionColor: selectionColor,
        ),
      );
    }
    return _text(textTemp);
  }

  Widget _text(textTemp) {
    return Container(
      padding: padding ?? EdgeInsets.zero,
      child: Text(
        hideAllText ? "••••" : "$textTemp",
        style: style,
        maxLines: maxLines,
        locale: locale,
        overflow: overflow,
        softWrap: softWrap,
        textAlign: textAlign,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior,
        textScaleFactor: textScaleFactor,
        textDirection: textDirection,
        strutStyle: strutStyle,
        semanticsLabel: semanticsLabel,
        selectionColor: selectionColor,
      ),
    );
  }

  String _hideValue(bool s, String textTemp) {
    int qtdKeys = 0;
    int characterHide = 0;
    String lastCharacter = "";
    List<String> textoNovo = textTemp.runes.map((ee) {
      var character = String.fromCharCode(ee);
      if(qtdKeys < 0) qtdKeys = 0;
      if (character == "{") {
        qtdKeys = qtdKeys + 1;
      }
      if(character == "{" && lastCharacter != "{") {
        qtdKeys = 1;
        characterHide = 0;
      }
      if(character == "}" && lastCharacter == "}") {
        qtdKeys = qtdKeys - 1;
      }
      lastCharacter = character;
      if(qtdKeys == 2) {
        if(s) {
          if(characterHide == 1) {
            character = "";
          } else {
            character = "#@!••••";
            characterHide = characterHide + 1;
          }
        } else {
          if(character == "{" && lastCharacter == "{") {
            character = "#@!";
          } else if(character == "}" && lastCharacter == "}") {
            character = "#@!";
          } else {
            character = character;
          }
        }
      }
      return character;
    }).toList();
    String temp = textoNovo.join();
    temp = temp.replaceAll("{#@!", "").replaceAll("#@!}", "").replaceAll("••••}", "••••");
    return temp;
  }

  String _boldValue(bool s, String textTemp) {
    int qtdKeys = 0;
    int characterHide = 0;
    String lastCharacter = "";
    List<String> textoNovo = textTemp.runes.map((ee) {
      var character = String.fromCharCode(ee);
      if(qtdKeys < 0) qtdKeys = 0;
      if (character == "*") {
        qtdKeys = qtdKeys + 1;
      }
      if(character == "*" && lastCharacter != "*") {
        qtdKeys = 1;
        characterHide = 0;
      }
      if(character == "*" && lastCharacter == "*") {
        qtdKeys = qtdKeys - 1;
      }
      lastCharacter = character;
      if(qtdKeys == 2) {
        if(s) {
          if(characterHide == 1) {
            character = "";
          } else {
            character = "#@!••••";
            characterHide = characterHide + 1;
          }
        } else {
          if(character == "*" && lastCharacter == "*") {
            character = "#@!";
          } else if(character == "*" && lastCharacter == "*") {
            character = "#@!";
          } else {
            character = character;
          }
        }
      }
      return character;
    }).toList();
    String temp = textoNovo.join();
    temp = temp.replaceAll("*#@!", "").replaceAll("#@!*", "").replaceAll("••••*", "••••");
    return temp;
  }
}