import 'dart:convert';

class VideoSessionFinancialEducationEntity {
  
  VideoSessionFinancialEducationEntity({
    this.type,
    this.value,
    this.index,
  });

  factory VideoSessionFinancialEducationEntity.fromMap(Map<String, dynamic> map) {
    return VideoSessionFinancialEducationEntity(
      type: map['type'] ?? '',
      value: map['value'] ?? '',
      index: map['index']?.toInt() ?? 0,
    );
  }

  factory VideoSessionFinancialEducationEntity.fromJson(String source) => VideoSessionFinancialEducationEntity.fromMap(json.decode(source));
  String? type;
  String? value;
  int? index;

  VideoSessionFinancialEducationEntity copyWith({
    String? type,
    String? value,
    int? index,
  }) {
    return VideoSessionFinancialEducationEntity(
      type: type ?? this.type,
      value: value ?? this.value,
      index: index ?? this.index,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'value': value,
      'index': index,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() => 'VideoSessionFinancialEducationEntity(type: $type, value: $value, index: $index)';
}
