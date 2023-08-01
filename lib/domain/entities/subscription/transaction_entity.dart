import 'dart:convert';

class TransactionEntity {

  TransactionEntity({
    this.id,
    this.status,
    this.message,
    this.authorizationCode,
    this.tid,
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

  factory TransactionEntity.fromMap(Map<String, dynamic> map) {
    return TransactionEntity(
      id: int.parse(map['id'] ?? '0'),
      status: map['status'] ?? '',
      message: map['message'] ?? '',
      authorizationCode: map['authorizationCode'] ?? map['authorization_code'] ??'',
      tid: map['tid'] ?? '',
      dateCreated: map['dateCreated'] ?? map['date_created'] ?? '',
      amount: map['amount']?.toInt() ?? 0,
      card: CardEntity.fromMap(map['card']),
      lastDigits: map['lastDigits'] ?? map['last_digits'] ?? '',
      firstDigits: map['firstDigits'] ?? map['first_digits'] ?? '',
      cardBrand: map['cardBrand'] ?? map['card_brand'] ?? '',
      paymentMethod: map['paymentMethod'] ??  map['payment_method'] ?? '',
      ip: map['ip'] ?? '',
      subscriptionId: map['subscriptionId'] ?? map['subscription_id'] ?? '',
      boletoUrl: map['boletoUrl'] ?? map['boleto_url'] ?? '',
      boletoBarcode: map['boletoBarcode'] ?? map['boleto_barcode'] ?? '',
      boletoExpirationDate: map['boletoExpirationDate'] ?? map['boleto_expiration_date'] ?? '',
      boleto: map['boleto'] ?? '',
      pixData: map['pixData'] ?? map['pix_data'] ?? '',
      pixQrCode: map['pixQrCode'] ?? map['pix_qr_code'] ?? '',
      pixExpirationDate: map['pixExpirationDate'] ?? map['pix_expiration_date'] ?? '',
    );
  }

  factory TransactionEntity.fromJson(String source) =>
      TransactionEntity.fromMap(json.decode(source));
  int? id;
  String? status;
  String? message;
  String? authorizationCode;
  String? tid;
  String? dateCreated;
  int? amount;
  CardEntity? card;
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

  TransactionEntity copyWith({
    int? id,
    String? status,
    String? message,
    String? authorizationCode,
    String? tid,
    String? dateCreated,
    int? amount,
    CardEntity? card,
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
      message: message ?? this.message,
      authorizationCode: authorizationCode ?? this.authorizationCode,
      tid: tid ?? this.tid,
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
      'message': message,
      'authorizationCode': authorizationCode,
      'tid': tid,
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

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'TransactionEntity(id: $id, status: $status, message: $message, authorizationCode: $authorizationCode, tid: $tid, dateCreated: $dateCreated, amount: $amount, card: $card, lastDigits: $lastDigits, firstDigits: $firstDigits, cardBrand: $cardBrand, paymentMethod: $paymentMethod, ip: $ip, subscriptionId: $subscriptionId, boletoUrl: $boletoUrl, boletoBarcode: $boletoBarcode, boletoExpirationDate: $boletoExpirationDate, boleto: $boleto, pixData: $pixData, pixQrCode: $pixQrCode, pixExpirationDate: $pixExpirationDate)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TransactionEntity &&
        other.id == id &&
        other.status == status &&
        other.message == message &&
        other.authorizationCode == authorizationCode &&
        other.tid == tid &&
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
        message.hashCode ^
        authorizationCode.hashCode ^
        tid.hashCode ^
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

class CardEntity {

  CardEntity({
    this.token,
    this.cardBrand,
    this.cardFirstDigits,
    this.cardLastDigits,
  });

  factory CardEntity.fromMap(Map<String, dynamic> map) {
    return CardEntity(
      token: map['token'] ?? map['token'] ?? '',
      cardBrand: map['cardBrand'] ?? map['card_brand'] ?? '',
      cardFirstDigits: map['cardFirstDigits'] ??  map['card_first_digits'] ??'',
      cardLastDigits:  map['cardLastDigits'] ??map['card_last_digits'] ?? '',
    );
  }

  factory CardEntity.fromJson(String source) =>
      CardEntity.fromMap(json.decode(source));
  String? token;
  String? cardBrand;
  String? cardFirstDigits;
  String? cardLastDigits;

  CardEntity copyWith({
    String? token,
    String? cardBrand,
    String? cardFirstDigits,
    String? cardLastDigits,
  }) {
    return CardEntity(
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

    return other is CardEntity &&
        other.token == token &&
        other.cardBrand == cardBrand &&
        other.cardFirstDigits == cardFirstDigits &&
        other.cardLastDigits == cardLastDigits;
  }

  @override
  int get hashCode =>
      token.hashCode ^ cardBrand.hashCode ^ cardFirstDigits.hashCode ^ cardLastDigits.hashCode;
}
