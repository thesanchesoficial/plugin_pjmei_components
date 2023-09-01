String? convertString(String? text, {Map<String, dynamic>? additionals}) {
  if(additionals != null) {
    additionals.forEach((k, v) {
      if(text == null) text = '';
      text = text!.replaceAll(k, "$v");
    });
  }
  return text;
}

String convertStringAlls(String text, {Map<String, dynamic>? additionals}) {
  if(additionals != null) {
    additionals.forEach((k, v) {
      text = text.replaceAll(k, "$v");
    });
  }
  return text;
}