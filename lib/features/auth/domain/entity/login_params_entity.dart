import 'dart:convert';

class LoginParams {
  String email;
  String password;
  LoginParams({
    required this.email,
    required this.password,
  });

  LoginParams copyWith({
    String? email,
    String? password,
  }) {
    return LoginParams(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
    };
  }

  factory LoginParams.fromMap(Map<String, dynamic> map) {
    return LoginParams(
      email: map['email'] ?? '',
      password: map['password'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginParams.fromJson(String source) => LoginParams.fromMap(json.decode(source));

  @override
  String toString() => 'LoginParams(email: $email, password: $password)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is LoginParams &&
      other.email == email &&
      other.password == password;
  }

  @override
  int get hashCode => email.hashCode ^ password.hashCode;
}
