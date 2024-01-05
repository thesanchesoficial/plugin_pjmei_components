import 'dart:convert';

class StatisticsMostBookedWeekdaysEntity {
  final int day;
  final int count;
  StatisticsMostBookedWeekdaysEntity({
    required this.day,
    required this.count,
  });

  StatisticsMostBookedWeekdaysEntity copyWith({
    int? day,
    int? count,
  }) {
    return StatisticsMostBookedWeekdaysEntity(
      day: day ?? this.day,
      count: count ?? this.count,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'day': day,
      'count': count,
    };
  }

  factory StatisticsMostBookedWeekdaysEntity.fromMap(Map<String, dynamic> map) {
    return StatisticsMostBookedWeekdaysEntity(
      day: map['day']?.toInt() ?? 0,
      count: map['count']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory StatisticsMostBookedWeekdaysEntity.fromJson(String source) => StatisticsMostBookedWeekdaysEntity.fromMap(json.decode(source));

  @override
  String toString() => 'StatisticsMostBookedWeekdaysEntity(day: $day, count: $count)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is StatisticsMostBookedWeekdaysEntity &&
      other.day == day &&
      other.count == count;
  }

  @override
  int get hashCode => day.hashCode ^ count.hashCode;
}
