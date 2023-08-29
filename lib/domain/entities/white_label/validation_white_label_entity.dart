import 'dart:convert';

class ValidationWhiteLabelEntity {
  bool requiredCompanyEnvironment;
  bool requiredIndividualEnvironment;
  String type;
  String value;
  ValidationWhiteLabelEntity({
    required this.requiredCompanyEnvironment,
    required this.requiredIndividualEnvironment,
    required this.type,
    required this.value,
  });

  ValidationWhiteLabelEntity copyWith({
    bool? requiredCompanyEnvironment,
    bool? requiredIndividualEnvironment,
    String? type,
    String? value,
  }) {
    return ValidationWhiteLabelEntity(
      requiredCompanyEnvironment: requiredCompanyEnvironment ?? this.requiredCompanyEnvironment,
      requiredIndividualEnvironment: requiredIndividualEnvironment ?? this.requiredIndividualEnvironment,
      type: type ?? this.type,
      value: value ?? this.value,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'requiredCompanyEnvironment': requiredCompanyEnvironment,
      'requiredIndividualEnvironment': requiredIndividualEnvironment,
      'type': type,
      'value': value,
    };
  }

  factory ValidationWhiteLabelEntity.fromMap(Map<String, dynamic> map) {
    return ValidationWhiteLabelEntity(
      requiredCompanyEnvironment: map['requiredCompanyEnvironment'] ?? false,
      requiredIndividualEnvironment: map['requiredIndividualEnvironment'] ?? false,
      type: map['type'] ?? '',
      value: map['value'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ValidationWhiteLabelEntity.fromJson(String source) => ValidationWhiteLabelEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ValidationWhiteLabelEntity(requiredCompanyEnvironment: $requiredCompanyEnvironment, requiredIndividualEnvironment: $requiredIndividualEnvironment, type: $type, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ValidationWhiteLabelEntity &&
      other.requiredCompanyEnvironment == requiredCompanyEnvironment &&
      other.requiredIndividualEnvironment == requiredIndividualEnvironment &&
      other.type == type &&
      other.value == value;
  }

  @override
  int get hashCode {
    return requiredCompanyEnvironment.hashCode ^
      requiredIndividualEnvironment.hashCode ^
      type.hashCode ^
      value.hashCode;
  }
}