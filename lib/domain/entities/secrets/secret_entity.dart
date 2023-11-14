import 'dart:convert';

class SecretEntity {

  SecretEntity({
    this.id,
    this.description,
    this.username,
    this.password,
    this.createdAt,
    this.updatedAt,
    this.companyId,
    this.type,
  });

  factory SecretEntity.fromMap(Map<String, dynamic> map) {
    return SecretEntity(
      id: map['id'] ?? '',
      description: map['description'] ?? '',
      username: map['username'] ?? '',
      password: map['password'] ?? '',
      createdAt: map['createdAt'] ?? map['created_at'] ?? '',
      updatedAt: map['updatedAt'] ?? map['updated_at'] ?? '',
      companyId: map['companyId'] ?? '',
      type: map['type'] ?? '',
    );
  }

  factory SecretEntity.fromJson(String source) => SecretEntity.fromMap(json.decode(source));
  String? id;
  String? description;
  String? username;
  String? password;
  String? createdAt;
  String? updatedAt;
  String? companyId;
  String? type;

  SecretEntity copyWith({
    String? id,
    String? description,
    String? username,
    String? password,
    String? createdAt,
    String? updatedAt,
    String? companyId,
    String? type,
  }) {
    return SecretEntity(
      id: id ?? this.id,
      description: description ?? this.description,
      username: username ?? this.username,
      password: password ?? this.password,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      companyId: companyId ?? this.companyId,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'description': description,
      'username': username,
      'password': password,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'companyId': companyId,
      'type': type,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'SecretEntity(id: $id, description: $description, username: $username, password: $password, createdAt: $createdAt, updatedAt: $updatedAt, companyId: $companyId, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is SecretEntity &&
      other.id == id &&
      other.description == description &&
      other.username == username &&
      other.password == password &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.companyId == companyId &&
      other.type == type;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      description.hashCode ^
      username.hashCode ^
      password.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      companyId.hashCode ^
      type.hashCode;
  }
}
