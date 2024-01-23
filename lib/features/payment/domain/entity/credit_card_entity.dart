import 'dart:convert';

class CreditCardPaymentEntity {
  String? userId;
  String? companyId;
  String? cardNumber;
  String? cardHolderName;
  String? cardExpMonth;
  String? cardExpYear;
  String? cardCvv;
  String? cardId;
  String? cardBrand;
  String? nick;
  String? first4;
  String? last4;
  
  CreditCardPaymentEntity({
    this.userId,
    this.companyId,
    this.cardNumber,
    this.cardHolderName,
    this.cardExpMonth,
    this.cardExpYear,
    this.cardCvv,
    this.cardId,
    this.cardBrand,
    this.nick,
    this.first4,
    this.last4,
  });

  CreditCardPaymentEntity copyWith({
    String? userId,
    String? companyId,
    String? cardNumber,
    String? cardHolderName,
    String? cardExpMonth,
    String? cardExpYear,
    String? cardCvv,
    String? cardId,
    String? cardBrand,
    String? nick,
    String? first4,
    String? last4,
  }) {
    return CreditCardPaymentEntity(
      userId: userId ?? this.userId,
      companyId: companyId ?? this.companyId,
      cardNumber: cardNumber ?? this.cardNumber,
      cardHolderName: cardHolderName ?? this.cardHolderName,
      cardExpMonth: cardExpMonth ?? this.cardExpMonth,
      cardExpYear: cardExpYear ?? this.cardExpYear,
      cardCvv: cardCvv ?? this.cardCvv,
      cardId: cardId ?? this.cardId,
      cardBrand: cardBrand ?? this.cardBrand,
      nick: nick ?? this.nick,
      first4: first4 ?? this.first4,
      last4: last4 ?? this.last4,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'companyId': companyId,
      'cardNumber': cardNumber,
      'cardHolderName': cardHolderName,
      'cardExpMonth': cardExpMonth,
      'cardExpYear': cardExpYear,
      'cardCvv': cardCvv,
      'cardId': cardId,
      'cardBrand': cardBrand,
      'nick': nick,
      'first4': first4,
      'last4': last4,
    };
  }

  factory CreditCardPaymentEntity.fromMap(Map<String, dynamic> map) {
    return CreditCardPaymentEntity(
      userId: map['userId'],
      companyId: map['companyId'],
      cardNumber: map['cardNumber'],
      cardHolderName: map['cardHolderName'],
      cardExpMonth: map['cardExpMonth'],
      cardExpYear: map['cardExpYear'],
      cardCvv: map['cardCvv'],
      cardId: map['cardId'],
      cardBrand: map['cardBrand'],
      nick: map['nick'],
      first4: map['first4'],
      last4: map['last4'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CreditCardPaymentEntity.fromJson(String source) => CreditCardPaymentEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CreditCardPaymentEntity(userId: $userId, companyId: $companyId, cardNumber: $cardNumber, cardHolderName: $cardHolderName, cardExpMonth: $cardExpMonth, cardExpYear: $cardExpYear, cardCvv: $cardCvv, cardId: $cardId, cardBrand: $cardBrand, nick: $nick, first4: $first4, last4: $last4)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CreditCardPaymentEntity &&
      other.userId == userId &&
      other.companyId == companyId &&
      other.cardNumber == cardNumber &&
      other.cardHolderName == cardHolderName &&
      other.cardExpMonth == cardExpMonth &&
      other.cardExpYear == cardExpYear &&
      other.cardCvv == cardCvv &&
      other.cardId == cardId &&
      other.cardBrand == cardBrand &&
      other.nick == nick &&
      other.first4 == first4 &&
      other.last4 == last4;
  }

  @override
  int get hashCode {
    return userId.hashCode ^
      companyId.hashCode ^
      cardNumber.hashCode ^
      cardHolderName.hashCode ^
      cardExpMonth.hashCode ^
      cardExpYear.hashCode ^
      cardCvv.hashCode ^
      cardId.hashCode ^
      cardBrand.hashCode ^
      nick.hashCode ^
      first4.hashCode ^
      last4.hashCode;
  }
}
