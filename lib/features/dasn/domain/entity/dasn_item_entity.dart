import 'dart:convert';

class DasnItemEntity {
  String? id;
  String type;
  String cnpj;
  int year;
  String? url;
  String? message;
  String updatedAt;
  String status;
  DasnItemEntity({
    this.id,
    required this.type,
    required this.cnpj,
    required this.year,
    this.url,
    this.message,
    required this.updatedAt,
    required this.status,
  });

  DasnItemEntity copyWith({
    String? id,
    String? type,
    String? cnpj,
    int? year,
    String? url,
    String? updatedAt,
    String? status,
    String? message,
  }) {
    return DasnItemEntity(
      id: id ?? this.id,
      type: type ?? this.type,
      cnpj: cnpj ?? this.cnpj,
      year: year ?? this.year,
      url: url ?? this.url,
      updatedAt: updatedAt ?? this.updatedAt,
      status: status ?? this.status,
      message: message ?? this.message,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'type': type,
      'cnpj': cnpj,
      'year': year,
      'url': url,
      'updatedAt': updatedAt,
      'status': status,
      'message': message,
    };
  }

  factory DasnItemEntity.fromMap(Map<String, dynamic> map) {
    return DasnItemEntity(
      id: map['id'],
      type: map['type'] ?? '',
      cnpj: map['cnpj'] ?? '',
      year: map['year']?.toInt() ?? 0,
      url: map['url'],
      updatedAt: map['updatedAt'],
      status: map['status'],
      message: map['message'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DasnItemEntity.fromJson(String source) => DasnItemEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'DasnItemEntity(id: $id, type: $type, cnpj: $cnpj, year: $year, url: $url, updatedAt: $updatedAt, status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is DasnItemEntity &&
      other.id == id &&
      other.type == type &&
      other.cnpj == cnpj &&
      other.year == year &&
      other.updatedAt == updatedAt &&
      other.status == status &&
      other.message == message &&
      other.url == url;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      type.hashCode ^
      cnpj.hashCode ^
      year.hashCode ^
      updatedAt.hashCode ^
      status.hashCode ^
      message.hashCode ^
      url.hashCode;
  }
}
