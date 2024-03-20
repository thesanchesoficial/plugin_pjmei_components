import 'dart:convert';

class ValidationWhiteLabelEntity {
  String name;
  String description;
  String type;
  dynamic parameters;
  
  ValidationWhiteLabelEntity({
    required this.name,
    required this.description,
    required this.type,
    required this.parameters,
  });

  ValidationWhiteLabelEntity copyWith({
    String? name,
    String? description,
    String? type,
    dynamic parameters,
  }) {
    return ValidationWhiteLabelEntity(
      name: name ?? this.name,
      description: description ?? this.description,
      type: type ?? this.type,
      parameters: parameters ?? this.parameters,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'type': type,
      'parameters': parameters,
    };
  }

  factory ValidationWhiteLabelEntity.fromMap(Map<String, dynamic> map) {
    return ValidationWhiteLabelEntity(
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      type: map['type'] ?? '',
      parameters: map['parameters'] ?? null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ValidationWhiteLabelEntity.fromJson(String source) => ValidationWhiteLabelEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ValidationWhiteLabelEntity(name: $name, description: $description, type: $type, parameters: $parameters)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ValidationWhiteLabelEntity &&
      other.name == name &&
      other.description == description &&
      other.type == type &&
      other.parameters == parameters;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      description.hashCode ^
      type.hashCode ^
      parameters.hashCode;
  }
}
