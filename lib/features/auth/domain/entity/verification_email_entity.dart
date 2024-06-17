import 'dart:convert';

class VerificationEmailEntity {
  final String? email;
  final String? code;
  final String? token;
  VerificationEmailEntity({
    this.email,
    this.code,
    this.token,
  });

  VerificationEmailEntity copyWith({
    String? email,
    String? code,
    String? token,
  }) {
    return VerificationEmailEntity(
      email: email ?? this.email,
      code: code ?? this.code,
      token: token ?? this.token,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'code': code,
      'token': token,
    };
  }

  factory VerificationEmailEntity.fromMap(Map<String, dynamic> map) {
    return VerificationEmailEntity(
      email: map['email'],
      code: map['code'],
      token: map['token'],
    );
  }

  String toJson() => json.encode(toMap());

  factory VerificationEmailEntity.fromJson(String source) => VerificationEmailEntity.fromMap(json.decode(source));

  @override
  String toString() => 'VerificationEmailEntity(email: $email, code: $code, token: $token)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is VerificationEmailEntity &&
      other.email == email &&
      other.code == code &&
      other.token == token;
  }

  @override
  int get hashCode => email.hashCode ^ code.hashCode ^ token.hashCode;
}
