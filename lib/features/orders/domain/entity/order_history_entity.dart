import 'dart:convert';

class OrderHistoricEntity {
  String id;
  String createdAt;
  String? updatedAt;
  String status;
  String? description;
  OrderHistoricEntity({
    required this.id,
    required this.createdAt,
    this.updatedAt,
    required this.status,
    this.description,
  });

  OrderHistoricEntity copyWith({
    String? id,
    String? createdAt,
    String? updatedAt,
    String? status,
    String? description,
  }) {
    return OrderHistoricEntity(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      status: status ?? this.status,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'status': status,
      'description': description,
    };
  }

  factory OrderHistoricEntity.fromMap(Map<String, dynamic> map) {
    return OrderHistoricEntity(
      id: map['id'] ?? '',
      createdAt: map['createdAt'] ?? '',
      updatedAt: map['updatedAt'],
      status: map['status'] ?? '',
      description: map['description'],
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderHistoricEntity.fromJson(String source) => OrderHistoricEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'OrderHistoricEntity(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, status: $status, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is OrderHistoricEntity &&
      other.id == id &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.status == status &&
      other.description == description;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      status.hashCode ^
      description.hashCode;
  }
}
