import 'dart:convert';

class RegisterParams {
  String documentNumber;
  String documentType;
  String name;
  String email;
  String password;
  String birth;
  String phone;
  String token;
  RegisterParams({
    required this.documentNumber,
    required this.documentType,
    required this.name,
    required this.email,
    required this.password,
    required this.birth,
    required this.phone,
    required this.token,
  });

  RegisterParams copyWith({
    String? documentNumber,
    String? documentType,
    String? name,
    String? email,
    String? password,
    String? birth,
    String? phone,
    String? token,
  }) {
    return RegisterParams(
      documentNumber: documentNumber ?? this.documentNumber,
      documentType: documentType ?? this.documentType,
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      birth: birth ?? this.birth,
      phone: phone ?? this.phone,
      token: token ?? this.token,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'documentNumber': documentNumber,
      'documentType': documentType,
      'name': name,
      'email': email,
      'password': password,
      'birth': birth,
      'phone': phone,
      'token': token,
    };
  }

  factory RegisterParams.fromMap(Map<String, dynamic> map) {
    return RegisterParams(
      documentNumber: map['documentNumber'] ?? '',
      documentType: map['documentType'] ?? '',
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      password: map['password'] ?? '',
      birth: map['birth'] ?? '',
      phone: map['phone'] ?? '',
      token: map['token'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterParams.fromJson(String source) => RegisterParams.fromMap(json.decode(source));

  @override
  String toString() {
    return 'RegisterParams(documentNumber: $documentNumber, documentType: $documentType, name: $name, email: $email, password: $password, birth: $birth, phone: $phone, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is RegisterParams &&
      other.documentNumber == documentNumber &&
      other.documentType == documentType &&
      other.name == name &&
      other.email == email &&
      other.password == password &&
      other.birth == birth &&
      other.phone == phone &&
      other.token == token;
  }

  @override
  int get hashCode {
    return documentNumber.hashCode ^
      documentType.hashCode ^
      name.hashCode ^
      email.hashCode ^
      password.hashCode ^
      birth.hashCode ^
      phone.hashCode ^
      token.hashCode;
  }
}
