import 'dart:convert';


class CheckIfUserExistsParams {
  String email;
  String name;
  CheckIfUserExistsParams({
    required this.email,
    required this.name,
  });

  CheckIfUserExistsParams copyWith({
    String? email,
    String? name,
  }) {
    return CheckIfUserExistsParams(
      email: email ?? this.email,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'name': name,
    };
  }

  factory CheckIfUserExistsParams.fromMap(Map<String, dynamic> map) {
    return CheckIfUserExistsParams(
      email: map['email'] ?? '',
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CheckIfUserExistsParams.fromJson(String source) => CheckIfUserExistsParams.fromMap(json.decode(source));

  @override
  String toString() => 'CheckIfUserExistsParams(email: $email, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CheckIfUserExistsParams &&
      other.email == email &&
      other.name == name;
  }

  @override
  int get hashCode => email.hashCode ^ name.hashCode;
}
