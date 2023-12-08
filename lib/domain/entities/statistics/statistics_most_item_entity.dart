import 'dart:convert';

class StatisticsMostItemEntity {
  final String? id;
  final String name;
  final int count;
  
  StatisticsMostItemEntity({
    this.id,
    required this.name,
    required this.count,
  });

  StatisticsMostItemEntity copyWith({
    String? id,
    String? name,
    int? count,
  }) {
    return StatisticsMostItemEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      count: count ?? this.count,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'count': count,
    };
  }

  factory StatisticsMostItemEntity.fromMap(Map<String, dynamic> map) {
    return StatisticsMostItemEntity(
      id: map['id'],
      name: map['name'] ?? '',
      count: map['count']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory StatisticsMostItemEntity.fromJson(String source) => StatisticsMostItemEntity.fromMap(json.decode(source));

  @override
  String toString() => 'StatisticsMostItemEntity(id: $id, name: $name, count: $count)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is StatisticsMostItemEntity &&
      other.id == id &&
      other.name == name &&
      other.count == count;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ count.hashCode;
}
