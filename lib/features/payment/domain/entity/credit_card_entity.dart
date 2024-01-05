import 'dart:convert';

class CreditCardPaymentEntity {
  String key;
  String nick;
  String id;
  String token;
  String first_4;
  String last_4;
  CreditCardPaymentEntity({
    required this.key,
    required this.nick,
    required this.id,
    required this.token,
    required this.first_4,
    required this.last_4,
  });

  CreditCardPaymentEntity copyWith({
    String? key,
    String? nick,
    String? id,
    String? token,
    String? first_4,
    String? last_4,
  }) {
    return CreditCardPaymentEntity(
      key: key ?? this.key,
      nick: nick ?? this.nick,
      id: id ?? this.id,
      token: token ?? this.token,
      first_4: first_4 ?? this.first_4,
      last_4: last_4 ?? this.last_4,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'key': key,
      'nick': nick,
      'id': id,
      'token': token,
      'first_4': first_4,
      'last_4': last_4,
    };
  }

  factory CreditCardPaymentEntity.fromMap(Map<String, dynamic> map) {
    return CreditCardPaymentEntity(
      key: map['key'] ?? '',
      nick: map['nick'] ?? '',
      id: map['id'] ?? '',
      token: map['token'] ?? '',
      first_4: map['first_4'] ?? '',
      last_4: map['last_4'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CreditCardPaymentEntity.fromJson(String source) => CreditCardPaymentEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CreditCardPaymentEntity(key: $key, nick: $nick, id: $id, token: $token, first_4: $first_4, last_4: $last_4)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CreditCardPaymentEntity &&
      other.key == key &&
      other.nick == nick &&
      other.id == id &&
      other.token == token &&
      other.first_4 == first_4 &&
      other.last_4 == last_4;
  }

  @override
  int get hashCode {
    return key.hashCode ^
      nick.hashCode ^
      id.hashCode ^
      token.hashCode ^
      first_4.hashCode ^
      last_4.hashCode;
  }
}
