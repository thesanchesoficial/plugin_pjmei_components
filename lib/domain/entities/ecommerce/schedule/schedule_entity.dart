import 'dart:convert';

class ScheduleEntity {
  String? id;
  int dayWeek;
  String startTime;
  String endTime;
  
  ScheduleEntity({
    this.id,
    required this.dayWeek,
    required this.startTime,
    required this.endTime,
  });

  ScheduleEntity copyWith({
    String? id,
    int? dayWeek,
    String? startTime,
    String? endTime,
  }) {
    return ScheduleEntity(
      id: id ?? this.id,
      dayWeek: dayWeek ?? this.dayWeek,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'dayWeek': dayWeek,
      'startTime': startTime,
      'endTime': endTime,
    };
  }

  factory ScheduleEntity.fromMap(Map<String, dynamic> map) {
    return ScheduleEntity(
      id: map['id'],
      dayWeek: map['dayWeek']?.toInt() ?? 0,
      startTime: map['startTime'] ?? '',
      endTime: map['endTime'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ScheduleEntity.fromJson(String source) => ScheduleEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ScheduleEntity(id: $id, dayWeek: $dayWeek, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ScheduleEntity &&
      other.id == id &&
      other.dayWeek == dayWeek &&
      other.startTime == startTime &&
      other.endTime == endTime;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      dayWeek.hashCode ^
      startTime.hashCode ^
      endTime.hashCode;
  }
}
