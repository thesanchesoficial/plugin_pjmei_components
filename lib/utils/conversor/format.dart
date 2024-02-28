import 'package:extended_masked_text/extended_masked_text.dart';

class Format {
  const Format._();

  static const int maxCHARACTERS = 255;

  static String capitalNumber(String value) {
    final String result = value.toString().replaceAll(RegExp(r'[^0-9]'), '');
    String mask;
    if (result.length == 13){
      mask = '0.000.000.000.000';
    }
    else if (result.length == 12){
      mask = '000.000.000.000';
    }
    else if (result.length == 11){
      mask = '00.000.000.000';
    }
    else if (result.length == 10){
      mask = '0.000.000.000';
    }
    else if (result.length == 9){
      mask = '000.000.000';
    }
    else if (result.length == 8){
      mask = '00.000.000';
    }
    else if (result.length == 7){
      mask = '0.000.000';
    }
    else if (result.length == 6){
      mask = '000.000';
    }
    else if (result.length == 5){
      mask = '00.000';
    }
    else if (result.length == 4){
      mask = '0.000';
    }
    else if (result.length == 3){
      mask = '000';
    }
    else if (result.length == 2){
      mask = '00';
    }
    else if (result.length == 1){
      mask = '0';
    }
    else {
      return value.toString();
    }
    final text = MaskedTextController(mask: mask, text: result);
    return text.text;
  }

  static String dateNumber(String value) {
    final String result = value.toString().replaceAll(RegExp(r'[^0-9]'), '');
    String mask;
    String day;
    String month;
    String year;
    String date;

    if (result.length == 8) {
      year = value.substring(0, 4);
      month = value.substring(5, 7);
      day = value.substring(8, 10);

      date = day + month + year;
      mask = '00/00/0000';
    } else{
      return value.toString();
    }
    final text = MaskedTextController(mask: mask, text: date);
    return text.text;
  }

  static String cepNumber(String value) {
    final String result = value.toString().replaceAll(RegExp(r'[^0-9]'), '');
    String mask;
    if (result.length == 8){
      mask = '00.000-000';
    }
    else{
      return value.toString();
    }
    final text = MaskedTextController(mask: mask, text: result);
    return text.text;
  }

  /// Compare the length and use the following masks: "0000 0000"; "00000 0000"; "(00) 0000 0000"; "(00) 00000 0000"; "+00 (00) 0000 0000"; "+00 (00) 00000 0000"
  static String phoneNumber(String value) {
    final String result = value.toString().replaceAll(RegExp(r'[^0-9]'), '');
    String mask;
    if (result.length == 8){
      mask = '0000 0000';
    }
    else if (result.length == 9){
      mask = '00000 0000';
    }
    else if (result.length == 10){
      mask = '(00) 0000 0000';
    }
    else if (result.length == 11){
      mask = '(00) 00000 0000';
    }
    else if (result.length == 12){
      mask = '+00 (00) 0000 0000';
    }
    else if (result.length == 13){
      mask = '+00 (00) 00000 0000';
    }
    else {
      return value.toString();
    }
    final text = MaskedTextController(mask: mask, text: result);
    return text.text;
  }

  /// It uses the mask "000.000.000-00" (cpf) or "00.000.000/0000-00" (cnpj)
  static String cpfCnpj(String value) {
    final String result = value.toString().replaceAll(RegExp(r'[^0-9]'), '');
    String mask;
    if (result.length == 11){
      mask = '000.000.000-00';
    }
    else if (result.length == 14){
      mask = '00.000.000/0000-00';
    }
    else {
      return value.toString();
    }
    final text = MaskedTextController(mask: mask, text: result);
    return text.text;
  }

  /// It uses the mask "000.000.000-00"
  static String cpf(String value) {
    final String result = value.toString().replaceAll(RegExp(r'[^0-9]'), '');
    String mask;
    if (result.length == 11) {
      mask = '000.000.000-00';
    }
    else {
      return value.toString();
    }
    final text = MaskedTextController(mask: mask, text: result);
    return text.text;
  }

  /// It uses the mask "00.000.000/0000-00"
  static String cnpj(String value) {
    final String result = value.toString().replaceAll(RegExp(r'[^0-9]'), '');
    String mask;
    if (result.length == 14) {
      mask = '00.000.000/0000-00';
    }
    else {
      return value.toString();
    }
    final text = MaskedTextController(mask: mask, text: result);
    return text.text;
  }

  /// Upper case for the fisrt letter
  static String capsFirst(String? value) {
    String? result = value;
    if (value != null && value.length > 1) {
      result = '${value.substring(0, 1).toUpperCase()}${value.substring(1).toLowerCase()}';
    }
    return result ?? '';
  }

  /// Upper case for the fisrt letter
  static String fisrtUpperRestSame(String? value) {
    String? result = value;
    if (value != null && value.length > 1) {
      result = '${value.substring(0, 1).toUpperCase()}${value.substring(1)}';
    }
    return result ?? '';
  }

  /// Upper case for all letters
  static String capsAll(String value) {
    return value.toUpperCase();
  }

  /// Upper case for the fisrt letter of each word
  static String capsFirstLetter(String? value) {
    String result = value ?? '';
    if (value != null && value.length > 1) {
      final List nomes = value.split(' ');
      result = '';
      nomes.forEach((element) {
        result += '${element.substring(0, 1).toUpperCase()}${element.substring(1).toLowerCase()} ';
      });
    }
    return result.trim();
  }

  /// Only trim
  static String name(String value) {
    // if(value.length < 6 || value.length > MAX_CHARACTERS) return false;
    // if(value.contains("\n") || value.contains("  ")) return false;
    // final regex = RegExp(r"^([a-zA-ZáàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ'\s]{2,}\s[a-zA-ZáàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ'\s]{1,}'?-?[a-zA-ZáàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ'\s]{1,}\s?([a-zA-ZáàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ'\s]{1,})?)$");
    // return regex.hasMatch(value);
    // * Verificar se bate com o regex de nome Valid.name(), se false, percorrer cada caractere, se for válido, retorna o caractere, se não, retorna String vazia
    return value.toString().trim();
  }

  /// Only trim
  static String url(String value) {
    return value.toString().trim();
  }

  /// Only trim
  static String description(String value) {
    return value.toString().trim();
  }

  /// Convert to double, can use thousand separator (different from decimal separator)
  ///
  /// Use "," or "." as decimal separator
  ///
  /// Remove all characters, but numbers, "," and "."
  ///
  /// If it couldn't convert to double, it returns 0
  static double fromRealToDouble(String? value) {
    double? result = double.tryParse(value.toString());
    value = value?.replaceAll(RegExp(r'[^0-9,.]'), '');
    if (value == null) return 0.0;
    String? decimalSeparator;
    for (int i = value.length - 1; i >= 0; i--) {
      if (decimalSeparator == null && (value[i] == '.' || value[i] == ',')) {
        decimalSeparator = value[i];
        break;
      }
    }
    if (decimalSeparator == ',') {
      value = value.replaceAll('.', '').replaceAll(',', '.');
    } else {
      value = value.replaceAll(',', '');
    }
    result = double.tryParse(value.toString());

    return result ?? 0.0;
  }

  /// Only trim() and lowerCase
  static String email(String value) {
    return value.toString().trim().toLowerCase();
  }

  // * Estabelecimentos

  static String partnerPhoneNumber(String value) {
    final String result = value.toString().replaceAll(RegExp(r'[^0-9]'), '');
    String mask;
    if (result.length == 8) {
      mask = '0000 0000';
    }
    else if (result.length == 9) {
      mask = '00000 0000';
    }
    else if (result.length == 10) {
      mask = '(00) 0000 0000';
    }
    else if (result.length == 11) {
      mask = '(00) 00000 0000';
    }
    else if (result.length == 12) {
      mask = '+00 (00) 0000 0000';
    }
    else if (result.length == 13) {
      mask = '+00 (00) 00000 0000';
    }
    else {
      return 'Sem telefone';
    }
    final text = MaskedTextController(mask: mask, text: result);
    return text.text;
  }

  static String partnerName(String value) {
    return value.toString() != 'null' ? value.toString() : 'Sem nome';
  }

  // * Outros
  static String removeAccentsAndPunctuation(String termo,
      {String punctuationRemoved = ',.!?;:()[]{}}'}) {
    termo = termo.trim().toLowerCase();
    final List a = ['á', 'à', 'ã', 'â', 'ä'];
    for (var letra in a) {
      termo = termo.replaceAll(letra, 'a');
    }

    final List e = ['é', 'è', 'ê', 'ë'];
    for (var letra in e) {
      termo = termo.replaceAll(letra, 'e');
    }

    final List i = ['í', 'ì', 'î', 'ï'];
    for (var letra in i) {
      termo = termo.replaceAll(letra, 'i');
    }

    final List o = ['ó', 'ò', 'ô', 'õ', 'ö'];
    for (var letra in o) {
      termo = termo.replaceAll(letra, 'o');
    }

    final List u = ['ú', 'ù', 'û', 'ü'];
    for (var letra in u) {
      termo = termo.replaceAll(letra, 'u');
    }

    final List y = ['ý', 'ÿ'];
    for (var letra in y) {
      termo = termo.replaceAll(letra, 'y');
    }

    termo = termo.replaceAll('ç', 'c');
    termo = termo.replaceAll('ñ', 'n');

    if (punctuationRemoved != ''){
      for (int i = 0; i < punctuationRemoved.length; i++){
        termo = termo.replaceAll(punctuationRemoved[i], ' ');
      }
    }

    return termo;
  }

  static String removerCaracteres(dynamic texto, String? caracteres, {bool trim = true}) {
    String msg = texto.toString();
    if (trim) msg = msg.trim();

    if (caracteres != null && caracteres != ''){
      for (int i = 0; i < caracteres.length; i++) {
        msg = msg.replaceAll(caracteres[i], '');
      }
    }

    return msg;
  }

  static String fromMonthCodeToMonthName(int month){
    switch(month){
      case 1:
        return 'Janeiro';
      case 2:
        return 'Fevereiro';
      case 3:
        return 'Março';
      case 4:
        return 'Abril';
      case 5:
        return 'Maio';
      case 6:
        return 'Junho';
      case 7:
        return 'Julho';
      case 8:
        return 'Agosto';
      case 9:
        return 'Setembro';
      case 10:
        return 'Outubro';
      case 11:
        return 'Novembro';
      case 12:
        return 'Dezembro';
      default:
        return 'Não definido';
    }
  }
}
