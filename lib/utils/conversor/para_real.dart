// pubspec.yaml
// dependencies:
//   flutter_masked_text: ^0.8.0

// * Passar para classe Format

import 'package:extended_masked_text/extended_masked_text.dart';

/// Transforma um valor para Real (BR)
/// 
/// Retorno padrão: *String* (ex: **R$ 1.999,99**)
/// 
/// [cifraoEsquerda] retorna "R$ " antes do valor
/// 
/// [valor] (*int*, *double* ou *String*) valor convertido em decimal
/// 
/// [separadorDecimal] (*String*) separador decimal (padrão: *","*)
/// 
/// [separadorMilhar] (*String*) separador de milhar (padrão: *"."*)
/// 
/// [ocultarCentavos] (*bool*) para ocultar os centavos caso seja 00
/// 
/// [retornoGratis] (*bool*) para retornar "Grátis" se for 0 (se falso, retorna "R$ 0,00")
/// 
/// Valores aceitáveis: *1.2312* (R$ 1,23), *"100"* (R$ 100,00), *"1.000,7"* (R$ 1.000,70), *15* (R$ 15,00), *"1,8"* (R$ 1,80)
String paraReal(
  dynamic valor, 
  {bool cifraoEsquerda = true, 
  String separadorDecimal = ',', 
  String separadorMilhar = '.', 
  bool ocultarCentavos = false,
  bool retornoGratis = true,
  bool hideValue = false,
  bool isInt = false,
}){
  var msk;
  if(isInt) {
    valor = valor.toString();
    dynamic tmp;
    final String simbolo = cifraoEsquerda ? 'R\$ ' : '';
    msk = MoneyMaskedTextController(decimalSeparator: separadorDecimal, thousandSeparator: separadorMilhar, leftSymbol: simbolo);
    
    if(valor.toString() == 'null'){
      if(retornoGratis) {
        return hideValue ? '••••' : 'Grátis';
      } else {
        return hideValue ? '••••' : msk.text;
      }
    }
    
    if(valor.contains(',') || valor.contains('.')){
      if(valor.contains(',') && valor.contains('.')) {
        valor = valor.replaceAll('.', '').replaceAll(',', '.');
      } else {
        valor = valor.replaceAll(',', '.');
      }
      tmp = double.tryParse(valor);
    }else{
      tmp = int.tryParse(valor);
      tmp = (tmp / 100);
    }
    
    if(tmp.toString() == 'null'){
      if(retornoGratis) {
        return hideValue ? '••••' : 'Grátis';
      } else {
        return hideValue ? '••••' : msk.text;
      }
    }
    
    tmp = tmp.toStringAsFixed(2);
    msk.text = tmp;

    if(ocultarCentavos && msk.text.substring(msk.text.length - 2) == '00'){
      String valor = msk.text;
      valor = valor.substring(0, valor.length - 3);
      return hideValue ? '••••' : valor;
    }

    if (msk.text.toString() == 'null' || 
        msk.text.toString() == '0${separadorDecimal}00' || 
        msk.text.toString() == '${simbolo}0${separadorDecimal}00'
    ){
      if(retornoGratis) {
        return hideValue ? '••••' : 'Grátis';
      } else {
        return hideValue ? '••••' : msk.text;
      }
    }
  } else {
    valor = valor.toString();
    dynamic tmp;
    final String simbolo = cifraoEsquerda ? 'R\$ ' : '';
    msk = MoneyMaskedTextController(decimalSeparator: separadorDecimal, thousandSeparator: separadorMilhar, leftSymbol: simbolo);
    if(valor.contains(',') || valor.contains('.')){
      if(valor.contains(',') && valor.contains('.')) {
        valor = valor.replaceAll('.', '').replaceAll(',', '.');
      } else {
        valor = valor.replaceAll(',', '.');
      }
      tmp = double.tryParse(valor);
    }else{
      tmp = int.tryParse(valor);
    }
    
    if(tmp.toString() == 'null'){
      if(retornoGratis) {
        return hideValue ? '••••' : 'Grátis';
      } else {
        return hideValue ? '••••' : msk.text;
      }
    }
    
    tmp = tmp.toStringAsFixed(2);
    msk.text = tmp;

    if(ocultarCentavos && msk.text.substring(msk.text.length - 2) == '00'){
      String valor = msk.text;
      valor = valor.substring(0, valor.length - 3);
      return hideValue ? '••••' : valor;
    }

    if (msk.text.toString() == 'null' || 
        msk.text.toString() == '0${separadorDecimal}00' || 
        msk.text.toString() == '${simbolo}0${separadorDecimal}00'
    ){
      if(retornoGratis) {
        return hideValue ? '••••' : 'Grátis';
      } else {
        return hideValue ? '••••' : msk.text;
      }
    }
  }
  return hideValue ? '••••' : msk.text;
}

String paraRealNumero(
  dynamic valor, 
  {bool cifraoEsquerda = true, 
  String separadorDecimal = ',', 
  String separadorMilhar = '.', 
  bool ocultarCentavos = false,
  bool retornoGratis = true,
  bool isInt = false,
}){
  var msk;
  if(isInt) {
    valor = valor.toString();
    dynamic tmp;
    final String simbolo = cifraoEsquerda ? 'R\$ ' : '';
    msk = MoneyMaskedTextController(decimalSeparator: separadorDecimal, thousandSeparator: separadorMilhar, leftSymbol: simbolo);
    
    if(valor.toString() == 'null'){
      if(retornoGratis) {
        return 'Grátis';
      } else {
        return msk.text;
      }
    }
    
    if(valor.contains(',') || valor.contains('.')){
      if(valor.contains(',') && valor.contains('.')) {
        valor = valor.replaceAll('.', '').replaceAll(',', '.');
      } else {
        valor = valor.replaceAll(',', '.');
      }
      tmp = double.tryParse(valor);
    }else{
      tmp = int.tryParse(valor);
      tmp = (tmp / 100);
    }
    
    if(tmp.toString() == 'null'){
      if(retornoGratis) {
        return 'Grátis';
      } else {
        return msk.text;
      }
    }
    
    tmp = tmp.toStringAsFixed(2);
    msk.text = tmp;

    if(ocultarCentavos && msk.text.substring(msk.text.length - 2) == '00'){
      String valor = msk.text;
      valor = valor.substring(0, valor.length - 3);
      return valor;
    }

    if (msk.text.toString() == 'null' || 
        msk.text.toString() == '0${separadorDecimal}00' || 
        msk.text.toString() == '${simbolo}0${separadorDecimal}00'
    ){
      if(retornoGratis) {
        return 'Grátis';
      } else {
        return msk.text;
      }
    }
  } else {
    valor = valor.toString();
    dynamic tmp;
    final String simbolo = cifraoEsquerda ? 'R\$ ' : '';
    msk = MoneyMaskedTextController(decimalSeparator: separadorDecimal, thousandSeparator: separadorMilhar, leftSymbol: simbolo);
    if(valor.contains(',') || valor.contains('.')){
      if(valor.contains(',') && valor.contains('.')) {
        valor = valor.replaceAll('.', '').replaceAll(',', '.');
      } else {
        valor = valor.replaceAll(',', '.');
      }
      tmp = double.tryParse(valor);
    }else{
      tmp = int.tryParse(valor);
    }
    
    if(tmp.toString() == 'null'){
      if(retornoGratis) {
        return 'Grátis';
      } else {
        return msk.text;
      }
    }
    
    tmp = tmp.toStringAsFixed(2);
    msk.text = tmp;

    if(ocultarCentavos && msk.text.substring(msk.text.length - 2) == '00'){
      String valor = msk.text;
      valor = valor.substring(0, valor.length - 3);
      return valor;
    }

    if (msk.text.toString() == 'null' || 
        msk.text.toString() == '0${separadorDecimal}00' || 
        msk.text.toString() == '${simbolo}0${separadorDecimal}00'
    ){
      if(retornoGratis) {
        return 'Grátis';
      } else {
        return msk.text;
      }
    }
  }
  return msk.text;
}