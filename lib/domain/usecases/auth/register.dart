import 'dart:convert';

import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class Register {
  Future<UserEntity> exec(RegisterParams params, {bool log = false});
}

class RegisterParams {
  String cpf;
  String name;
  String email;
  String password;
  String birth;
  String phone;
  RegisterParams({
    required this.cpf,
    required this.name,
    required this.email,
    required this.password,
    required this.birth,
    required this.phone,
  });

  RegisterParams copyWith({
    String? cpf,
    String? name,
    String? email,
    String? password,
    String? birth,
    String? phone,
  }) {
    return RegisterParams(
      cpf: cpf ?? this.cpf,
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      birth: birth ?? this.birth,
      phone: phone ?? this.phone,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cpf': cpf,
      'name': name,
      'email': email,
      'password': password,
      'birth': birth,
      'phone': phone,
    };
  }

  factory RegisterParams.fromMap(Map<String, dynamic> map) {
    return RegisterParams(
      cpf: map['cpf'] ?? '',
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      password: map['password'] ?? '',
      birth: map['birth'] ?? '',
      phone: map['phone'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterParams.fromJson(String source) => RegisterParams.fromMap(json.decode(source));

  @override
  String toString() {
    return 'RegisterParams(cpf: $cpf, name: $name, email: $email, password: $password, birth: $birth, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is RegisterParams &&
      other.cpf == cpf &&
      other.name == name &&
      other.email == email &&
      other.password == password &&
      other.birth == birth &&
      other.phone == phone;
  }

  @override
  int get hashCode {
    return cpf.hashCode ^
      name.hashCode ^
      email.hashCode ^
      password.hashCode ^
      birth.hashCode ^
      phone.hashCode;
  }
}
