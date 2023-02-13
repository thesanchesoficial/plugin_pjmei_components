
enum TextFieldMaskType {
  cpf,
  cnpj,
  cpfCnpj,
  date,
  dateTime,
  time,
  cardNumber,
  cardCvv,
  cardDateYYYY,
  cardDateYY,
  money,
  integer,
  decimal,
  name,
  email,
  password,
  multiText,
  cep,
  search,
  chat,
  phones,
  landlineCell,
}

class TextFieldType {
  final TextFieldMaskType type;
  String? mask;
  int? quantity;
  num? min;
  num? max;
  List<dynamic>? list;
  String? symbol;
  
  TextFieldType.cpf() : type = TextFieldMaskType.cpf;
  TextFieldType.cnpj() : type = TextFieldMaskType.cnpj;
  TextFieldType.cpfCnpj() : type = TextFieldMaskType.cpfCnpj;
  TextFieldType.date() : type = TextFieldMaskType.date;
  TextFieldType.time() : type = TextFieldMaskType.time;
  TextFieldType.cardNumber() : type = TextFieldMaskType.cardNumber;
  TextFieldType.cardCvv() : type = TextFieldMaskType.cardCvv;
  TextFieldType.cardDateYYYY() : type = TextFieldMaskType.cardDateYYYY;
  TextFieldType.cardDateYY() : type = TextFieldMaskType.cardDateYY;
  TextFieldType.decimal() : type = TextFieldMaskType.decimal;
  TextFieldType.name() : type = TextFieldMaskType.name;
  TextFieldType.email() : type = TextFieldMaskType.email;
  TextFieldType.password() : type = TextFieldMaskType.password;
  TextFieldType.multiText() : type = TextFieldMaskType.multiText;
  TextFieldType.cep() : type = TextFieldMaskType.cep;
  TextFieldType.search() : type = TextFieldMaskType.search;
  TextFieldType.chat() : type = TextFieldMaskType.chat;
  TextFieldType.landlineCell() : type = TextFieldMaskType.landlineCell;

  TextFieldType.money({this.symbol = "R\$"}) : type = TextFieldMaskType.money;

  TextFieldType.phones({
    int? numbersQuantity,
    int? minNumbersPhoneQuantity, 
    int? maxNumbersPhoneQuantity,
  }): assert((minNumbersPhoneQuantity ?? 0) < (maxNumbersPhoneQuantity ?? 0)),
      assert(numbersQuantity == null || (minNumbersPhoneQuantity == null && maxNumbersPhoneQuantity == null)),
      type = TextFieldMaskType.phones, 
      quantity = numbersQuantity,
      min = minNumbersPhoneQuantity, 
      max = maxNumbersPhoneQuantity;

  TextFieldType.integer({
    int zerosQuantity = 1,
    int maxNumberOfPlaces = 9,
  }): assert(zerosQuantity > 0),
      assert(zerosQuantity <= maxNumberOfPlaces),
      type = TextFieldMaskType.integer,
      min = zerosQuantity, 
      max = maxNumberOfPlaces;
  
  TextFieldType.dateTime({
    this.mask = "00/00/0000 00:00:00",
  }): assert(mask != null),
      type = TextFieldMaskType.dateTime;
}


