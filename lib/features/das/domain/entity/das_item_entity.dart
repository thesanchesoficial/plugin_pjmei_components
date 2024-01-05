import 'dart:convert';

class DasItemEntity {
  final String id;
  final String cnpj;
  final int year;
  final String month;
  final String total;
  final String? barCode;
  final String? situation;
  final String? dueDate;
  final String? url;
  final String createdAt;
  final String updatedAt;
  String? message;
  String? status;
  DasItemEntity({
    required this.id,
    required this.cnpj,
    required this.year,
    required this.month,
    required this.total,
    this.barCode,
    this.situation,
    this.dueDate,
    this.url,
    this.message,
    this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  DasItemEntity copyWith({
    String? id,
    String? cnpj,
    int? year,
    String? month,
    String? total,
    String? barCode,
    String? situation,
    String? dueDate,
    String? url,
    String? message,
    String? status,
    String? createdAt,
    String? updatedAt,
  }) {
    return DasItemEntity(
      id: id ?? this.id,
      cnpj: cnpj ?? this.cnpj,
      year: year ?? this.year,
      month: month ?? this.month,
      total: total ?? this.total,
      barCode: barCode ?? this.barCode,
      situation: situation ?? this.situation,
      dueDate: dueDate ?? this.dueDate,
      url: url ?? this.url,
      message: message ?? this.message,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'cnpj': cnpj,
      'year': year,
      'month': month,
      'total': total,
      'barCode': barCode,
      'situation': situation,
      'dueDate': dueDate,
      'url': url,
      'message': message,
      'status': status,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  factory DasItemEntity.fromMap(Map<String, dynamic> map) {
    return DasItemEntity(
      id: map['id'] ?? '',
      cnpj: map['cnpj'] ?? '',
      year: map['year'] ?? 0,
      month: map['month'] ?? '',
      total: map['total'] ?? '',
      barCode: map['barCode'],
      situation: map['situation'],
      dueDate: map['dueDate'],
      url: map['url'],
      message: map['message'],
      status: map['status'],
      createdAt: map['createdAt'] ?? '',
      updatedAt: map['updatedAt'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory DasItemEntity.fromJson(String source) => DasItemEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'DasItemEntity(id: $id, cnpj: $cnpj, year: $year, month: $month, total: $total, barCode: $barCode, situation: $situation, message: $message, status: $status, dueDate: $dueDate, url: $url, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is DasItemEntity &&
      other.id == id &&
      other.cnpj == cnpj &&
      other.year == year &&
      other.month == month &&
      other.total == total &&
      other.barCode == barCode &&
      other.situation == situation &&
      other.dueDate == dueDate &&
      other.url == url &&
      other.message == message &&
      other.status == status &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      cnpj.hashCode ^
      year.hashCode ^
      month.hashCode ^
      total.hashCode ^
      barCode.hashCode ^
      situation.hashCode ^
      dueDate.hashCode ^
      url.hashCode ^
      message.hashCode ^
      status.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode;
  }
}
