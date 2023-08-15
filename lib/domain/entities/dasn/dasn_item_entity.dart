import 'dart:convert';

class DasnItemEntity {
  String? id;
  String type;
  String cnpj;
  int year;
  String? url;
  DasnItemEntity({
    this.id,
    required this.type,
    required this.cnpj,
    required this.year,
    this.url,
  });

  DasnItemEntity copyWith({
    String? id,
    String? type,
    String? cnpj,
    int? year,
    String? url,
  }) {
    return DasnItemEntity(
      id: id ?? this.id,
      type: type ?? this.type,
      cnpj: cnpj ?? this.cnpj,
      year: year ?? this.year,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'type': type,
      'cnpj': cnpj,
      'year': year,
      'url': url,
    };
  }

  factory DasnItemEntity.fromMap(Map<String, dynamic> map) {
    return DasnItemEntity(
      id: map['id'],
      type: map['type'] ?? '',
      cnpj: map['cnpj'] ?? '',
      year: map['year']?.toInt() ?? 0,
      url: map['url'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DasnItemEntity.fromJson(String source) => DasnItemEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'DasnItemEntity(id: $id, type: $type, cnpj: $cnpj, year: $year, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is DasnItemEntity &&
      other.id == id &&
      other.type == type &&
      other.cnpj == cnpj &&
      other.year == year &&
      other.url == url;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      type.hashCode ^
      cnpj.hashCode ^
      year.hashCode ^
      url.hashCode;
  }
}
