import 'dart:convert';

class TransactionEntity {
  int? id;
  String? status;
  String? url;
  String? message;
  String? authorizationCode;
  String? tid;
  String? paidAt;
  String? dateCreated;
  int? amount;
  CreditCardEntity? card;
  String? lastDigits;
  String? firstDigits;
  String? cardBrand;
  String? paymentMethod;
  String? ip;
  String? subscriptionId;
  String? boletoUrl;
  String? boletoBarcode;
  String? boletoExpirationDate;
  String? boleto;
  String? pixData;
  String? pixQrCode;
  String? pixExpirationDate;
  TransactionEntity({
    this.id,
    this.status,
    this.url,
    this.message,
    this.authorizationCode,
    this.tid,
    this.paidAt,
    this.dateCreated,
    this.amount,
    this.card,
    this.lastDigits,
    this.firstDigits,
    this.cardBrand,
    this.paymentMethod,
    this.ip,
    this.subscriptionId,
    this.boletoUrl,
    this.boletoBarcode,
    this.boletoExpirationDate,
    this.boleto,
    this.pixData,
    this.pixQrCode,
    this.pixExpirationDate,
  });


  TransactionEntity copyWith({
    int? id,
    String? status,
    String? url,
    String? message,
    String? authorizationCode,
    String? tid,
    String? paidAt,
    String? dateCreated,
    int? amount,
    CreditCardEntity? card,
    String? lastDigits,
    String? firstDigits,
    String? cardBrand,
    String? paymentMethod,
    String? ip,
    String? subscriptionId,
    String? boletoUrl,
    String? boletoBarcode,
    String? boletoExpirationDate,
    String? boleto,
    String? pixData,
    String? pixQrCode,
    String? pixExpirationDate,
  }) {
    return TransactionEntity(
      id: id ?? this.id,
      status: status ?? this.status,
      url: url ?? this.url,
      message: message ?? this.message,
      authorizationCode: authorizationCode ?? this.authorizationCode,
      tid: tid ?? this.tid,
      paidAt: paidAt ?? this.paidAt,
      dateCreated: dateCreated ?? this.dateCreated,
      amount: amount ?? this.amount,
      card: card ?? this.card,
      lastDigits: lastDigits ?? this.lastDigits,
      firstDigits: firstDigits ?? this.firstDigits,
      cardBrand: cardBrand ?? this.cardBrand,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      ip: ip ?? this.ip,
      subscriptionId: subscriptionId ?? this.subscriptionId,
      boletoUrl: boletoUrl ?? this.boletoUrl,
      boletoBarcode: boletoBarcode ?? this.boletoBarcode,
      boletoExpirationDate: boletoExpirationDate ?? this.boletoExpirationDate,
      boleto: boleto ?? this.boleto,
      pixData: pixData ?? this.pixData,
      pixQrCode: pixQrCode ?? this.pixQrCode,
      pixExpirationDate: pixExpirationDate ?? this.pixExpirationDate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'status': status,
      'url': url,
      'message': message,
      'authorizationCode': authorizationCode,
      'tid': tid,
      'paidAt': paidAt,
      'dateCreated': dateCreated,
      'amount': amount,
      'card': card?.toMap(),
      'lastDigits': lastDigits,
      'firstDigits': firstDigits,
      'cardBrand': cardBrand,
      'paymentMethod': paymentMethod,
      'ip': ip,
      'subscriptionId': subscriptionId,
      'boletoUrl': boletoUrl,
      'boletoBarcode': boletoBarcode,
      'boletoExpirationDate': boletoExpirationDate,
      'boleto': boleto,
      'pixData': pixData,
      'pixQrCode': pixQrCode,
      'pixExpirationDate': pixExpirationDate,
    };
  }

  factory TransactionEntity.fromMap(Map<String, dynamic> map) {
    return TransactionEntity(
      id: map['id']?.toInt(),
      status: map['status'],
      url: map['url'],
      message: map['message'],
      authorizationCode: map['authorizationCode'],
      tid: map['tid'],
      paidAt: map['paidAt'],
      dateCreated: map['dateCreated'],
      amount: map['amount']?.toInt(),
      card: map['card'] != null ? CreditCardEntity.fromMap(map['card']) : null,
      lastDigits: map['lastDigits'],
      firstDigits: map['firstDigits'],
      cardBrand: map['cardBrand'],
      paymentMethod: map['paymentMethod'],
      ip: map['ip'],
      subscriptionId: map['subscriptionId'],
      boletoUrl: map['boletoUrl'],
      boletoBarcode: map['boletoBarcode'],
      boletoExpirationDate: map['boletoExpirationDate'],
      boleto: map['boleto'],
      pixData: map['pixData'],
      pixQrCode: map['pixQrCode'],
      pixExpirationDate: map['pixExpirationDate'],
    );
  }

  String toJson() => json.encode(toMap());

  factory TransactionEntity.fromJson(String source) => TransactionEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'TransactionEntity(id: $id, status: $status, url: $url, message: $message, authorizationCode: $authorizationCode, tid: $tid, paidAt: $paidAt, dateCreated: $dateCreated, amount: $amount, card: $card, lastDigits: $lastDigits, firstDigits: $firstDigits, cardBrand: $cardBrand, paymentMethod: $paymentMethod, ip: $ip, subscriptionId: $subscriptionId, boletoUrl: $boletoUrl, boletoBarcode: $boletoBarcode, boletoExpirationDate: $boletoExpirationDate, boleto: $boleto, pixData: $pixData, pixQrCode: $pixQrCode, pixExpirationDate: $pixExpirationDate)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is TransactionEntity &&
      other.id == id &&
      other.status == status &&
      other.url == url &&
      other.message == message &&
      other.authorizationCode == authorizationCode &&
      other.tid == tid &&
      other.paidAt == paidAt &&
      other.dateCreated == dateCreated &&
      other.amount == amount &&
      other.card == card &&
      other.lastDigits == lastDigits &&
      other.firstDigits == firstDigits &&
      other.cardBrand == cardBrand &&
      other.paymentMethod == paymentMethod &&
      other.ip == ip &&
      other.subscriptionId == subscriptionId &&
      other.boletoUrl == boletoUrl &&
      other.boletoBarcode == boletoBarcode &&
      other.boletoExpirationDate == boletoExpirationDate &&
      other.boleto == boleto &&
      other.pixData == pixData &&
      other.pixQrCode == pixQrCode &&
      other.pixExpirationDate == pixExpirationDate;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      status.hashCode ^
      url.hashCode ^
      message.hashCode ^
      authorizationCode.hashCode ^
      tid.hashCode ^
      paidAt.hashCode ^
      dateCreated.hashCode ^
      amount.hashCode ^
      card.hashCode ^
      lastDigits.hashCode ^
      firstDigits.hashCode ^
      cardBrand.hashCode ^
      paymentMethod.hashCode ^
      ip.hashCode ^
      subscriptionId.hashCode ^
      boletoUrl.hashCode ^
      boletoBarcode.hashCode ^
      boletoExpirationDate.hashCode ^
      boleto.hashCode ^
      pixData.hashCode ^
      pixQrCode.hashCode ^
      pixExpirationDate.hashCode;
  }
}

class CreditCardEntity {

  CreditCardEntity({
    this.token,
    this.cardBrand,
    this.cardFirstDigits,
    this.cardLastDigits,
  });

  factory CreditCardEntity.fromMap(Map<String, dynamic> map) {
    return CreditCardEntity(
      token: map['token'] ?? map['token'] ?? '',
      cardBrand: map['cardBrand'] ?? map['card_brand'] ?? '',
      cardFirstDigits: map['cardFirstDigits'] ??  map['card_first_digits'] ??'',
      cardLastDigits:  map['cardLastDigits'] ??map['card_last_digits'] ?? '',
    );
  }

  factory CreditCardEntity.fromJson(String source) =>
      CreditCardEntity.fromMap(json.decode(source));
  String? token;
  String? cardBrand;
  String? cardFirstDigits;
  String? cardLastDigits;

  CreditCardEntity copyWith({
    String? token,
    String? cardBrand,
    String? cardFirstDigits,
    String? cardLastDigits,
  }) {
    return CreditCardEntity(
      token: token ?? this.token,
      cardBrand: cardBrand ?? this.cardBrand,
      cardFirstDigits: cardFirstDigits ?? this.cardFirstDigits,
      cardLastDigits: cardLastDigits ?? this.cardLastDigits,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'token': token,
      'cardBrand': cardBrand,
      'cardFirstDigits': cardFirstDigits,
      'cardLastDigits': cardLastDigits,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() =>
      'CardEntity(token: $token, cardBrand: $cardBrand, cardFirstDigits: $cardFirstDigits, cardLastDigits: $cardLastDigits)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CreditCardEntity &&
        other.token == token &&
        other.cardBrand == cardBrand &&
        other.cardFirstDigits == cardFirstDigits &&
        other.cardLastDigits == cardLastDigits;
  }

  @override
  int get hashCode =>
      token.hashCode ^ cardBrand.hashCode ^ cardFirstDigits.hashCode ^ cardLastDigits.hashCode;
}
