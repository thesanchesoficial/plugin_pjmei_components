import 'dart:convert';

class ExtraService {

  ExtraService({
    this.id,
    this.name,
    this.description,
    this.displayType,
    this.index,
    this.icon,
  });

  factory ExtraService.fromMap(Map<String, dynamic> map) {
    return ExtraService(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      displayType: map['displayType'] ?? '',
      index: map['index']?.toInt() ?? 900,
      icon: map['icon'] ?? '',
    );
  }

  factory ExtraService.fromJson(String source) => ExtraService.fromMap(json.decode(source));
  String? id;
  String? name;
  String? description;
  String? displayType;
  int? index;
  String? icon;

  ExtraService copyWith({
    String? id,
    String? name,
    String? description,
    String? displayType,
    int? index,
    String? icon,
  }) {
    return ExtraService(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      displayType: displayType ?? this.displayType,
      index: index ?? this.index,
      icon: icon ?? this.icon,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'displayType': displayType,
      'index': index,
      'icon': icon,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'ExtraService(id: $id, name: $name, description: $description, displayType: $displayType, index: $index, icon: $icon)';
  }
}
