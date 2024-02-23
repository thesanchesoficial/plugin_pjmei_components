import 'package:brasil_fields/brasil_fields.dart';

class Valid {
  const Valid._();

  static const int maxCharacters = 255;

  /// Validade if the [value] is empty, or less than or equal to [length]
  /// 
  /// [value] is *String*
  static bool validateText(dynamic value, {int length = 0, int? maxLegth}) {
    if (value.toString() == "null" || value.length <= length) return false;
    if (maxLegth != null && value.length > maxLegth) {
      return false;
    } else {
      return true;
    }
  }

  /// Validade if the [value] is empty, or less than or equal to [length]
  /// 
  /// [value] is *List*
  static bool validateList(List value, {int length = 0, int? maxLegth}) {
    if (value.toString() == "null" || value.length <= length) return false;
    if (maxLegth != null && value.length > maxLegth) {
      return false;
    } else {
      return true;
    }
  }
  
  /// Obviusly, it validates the name
  static bool validateName(String value, {int length = 0}) {
    if(value.length < 6 || value.length > maxCharacters) return false;
    if(value.contains("\n") || value.contains("  ")) return false;
    final regex = RegExp(r"^([a-zA-ZáàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ'\s]{2,}\s[a-zA-ZáàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ'\s]{1,}'?-?[a-zA-ZáàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ'\s]{1,}\s?([a-zA-ZáàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ'\s]{1,})?)$");
    return regex.hasMatch(value);
  }

  /// Obviusly, it validates the email
  static bool validateEmail(String value) {
    const String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    final RegExp regex = RegExp(pattern);
    return regex.hasMatch(value);
  }

  /// Validate CPF and CNPJ
  static bool validateDocument(String value) {
    return (UtilBrasilFields.isCPFValido(value) || UtilBrasilFields.isCNPJValido(value));
  }

  /// Validate only CPF
  static bool validateCpf(String value) {
    return UtilBrasilFields.isCPFValido(value);
  }

  /// Validate only CNPJ
  static bool validateCnpj(String value) {
    return UtilBrasilFields.isCNPJValido(value);
  }

  /// Obviusly, it validates the phone number
  static bool validatePhone(String value) {
    value = value.replaceAll(RegExp(r'[^0-9]'), '');
    return (value.length >= 8 && value.length <= 13);
  }

  
  /// Needs to be more than 5
  static bool password(String value) {
    if(value.length > maxCharacters) return false;
    return validateText(value, length: 5);
  }

  static bool text(dynamic value, {int length = 0, int? maxLegth}) {
    if (value.toString() == "null" || value.toString().length <= length) return false;
    if (maxLegth != null && value.length > maxLegth) {
      return false;
    } else {
      return true;
    }
  }
  
  /// Obviusly, it validates the name
  static bool name(String value) {
    if(value.length < 6 || value.length > maxCharacters) return false;
    if(value.contains("\n") || value.contains("  ") || !value.contains(" ")) return false;
    final regex = RegExp(r"^([a-zA-ZáàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ'\s]{2,}\s[a-zA-ZáàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ'\s]{1,}'?-?[a-zA-ZáàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ'\s]{1,}\s?([a-zA-ZáàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ'\s]{1,})?)$");
    return regex.hasMatch(value);
  }

  /// Obviusly, it validates the email
  static bool email(String value) {
    if(value.length > maxCharacters) return false;
    const String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    final RegExp regex = RegExp(pattern);
    return regex.hasMatch(value);
  }

  /// Validate CPF and CNPJ
  static bool document(String value) {
    return (UtilBrasilFields.isCPFValido(value) || UtilBrasilFields.isCNPJValido(value));
  }

  /// Validate only CPF
  static bool cpf(String value) {
    return UtilBrasilFields.isCPFValido(value);
  }

  /// Validate only CNPJ
  static bool cnpj(String value) {
    return UtilBrasilFields.isCNPJValido(value);
  }

  /// It validates only the numbers length
  static bool phoneNumber(String value) {
    value = value.replaceAll(RegExp(r'[^0-9]'), '');
    return (value.length >= 8 && value.length <= 13);
  }

  /// It validates only the numbers length
  static bool cep(String value) {
    value = value.replaceAll(RegExp(r'[^0-9]'), '');
    return (value.length == 8);
  }

  /// It validates if it is not empty
  static bool addressNumber(String value) {
    if(value.length > maxCharacters) return false;
    return (value.isNotEmpty);
  }

  /// Needs to be more than 4
  static bool addressStreet(String value) {
    if(value.length > maxCharacters) return false;
    return text(value, length: 4);
  }

  /// Needs to be more than 2
  static bool addressNeighborhood(String value) {
    if(value.length > maxCharacters) return false;
    return text(value, length: 2);
  }

  /// Needs to be more than 2
  static bool addressCity(String value) {
    if(value.length > maxCharacters) return false;
    return text(value, length: 2);
  }

  /// Needs to be just 2 letters
  static bool addressUf(String value) {
    const String pattern = r'^([a-zA-Z]{2})$';
    final RegExp regex = RegExp(pattern);
    return regex.hasMatch(value);
  }

  /// Needs to be equal to 10
  static bool birthDate(String value) {
    return (value.length == 10);
  }

  /// Needs to be 6 numbers
  static bool cardNumber(String value) {
    value = value.replaceAll(" ", "");
    const String pattern = r'^([0-9]{14,16})$';
    final RegExp regex = RegExp(pattern);
    return regex.hasMatch(value);
  }
  
  /// Needs to be 6 numbers (MM/YYYY or MM/YY)
  static bool cardValidity(String value) {
    if (value.toString().length < 2) return false;
    int? month = int.tryParse(value.substring(0, 2));
    if (month == null) {
      return false;
    } else if (month > 12) {
      return false;
    }
    value = value.replaceAll("/", "");
    const String pattern = r'^([0-9]{6})$';
    const String pattern2 = r'^([0-9]{4})$';
    final RegExp regex = RegExp(pattern);
    final RegExp regex2 = RegExp(pattern2);
    return (regex.hasMatch(value) || regex2.hasMatch(value));
  }

  /// Needs to be a name (upper or lower case)
  static bool cardName(String value) {
    if(value.length > maxCharacters || !value.contains(" ")) return false;
    const String pattern = r"^[a-zA-Z áàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ -']+";
    final RegExp regex = RegExp(pattern);
    return regex.hasMatch(value);
  }

  /// Needs to be 3 or 4 numbers
  static bool cardCvv(String value) {
    const String pattern = r'^([0-9]{3,4})$';
    final RegExp regex = RegExp(pattern);
    return regex.hasMatch(value);
  }

  /// Needs to be more than 0
  static bool alias(String value) {
    if(value.length > maxCharacters) return false;
    return (value.isNotEmpty);
  }
}
