import 'dart:convert';

class StatisticsPeriodEntity {
  final int current;
  final int before;
  StatisticsPeriodEntity({
    required this.current,
    required this.before,
  });

  StatisticsPeriodEntity copyWith({
    int? current,
    int? before,
  }) {
    return StatisticsPeriodEntity(
      current: current ?? this.current,
      before: before ?? this.before,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'current': current,
      'before': before,
    };
  }

  factory StatisticsPeriodEntity.fromMap(Map<String, dynamic> map) {
    return StatisticsPeriodEntity(
      current: map['current']?.toInt() ?? 0,
      before: map['before']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory StatisticsPeriodEntity.fromJson(String source) => StatisticsPeriodEntity.fromMap(json.decode(source));

  @override
  String toString() => 'StatisticsPeriodEntity(current: $current, before: $before)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is StatisticsPeriodEntity &&
      other.current == current &&
      other.before == before;
  }

  @override
  int get hashCode => current.hashCode ^ before.hashCode;
}
