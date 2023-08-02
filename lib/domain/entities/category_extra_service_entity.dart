import 'dart:convert';

class CategoryExtraServiceEntity {
  String? id;
  String name;
  String description;
  String displayType;
  int index;
  String icon;
  List<String> list;
  
  CategoryExtraServiceEntity({
    this.id,
    required this.name,
    required this.description,
    required this.displayType,
    required this.index,
    required this.icon,
    required this.list,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'displayType': displayType,
      'index': index,
      'icon': icon,
      'list': list,
    };
  }

  factory CategoryExtraServiceEntity.fromMap(Map<String, dynamic> map) {
    return CategoryExtraServiceEntity(
      id: map['id'],
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      displayType: map['displayType'] ?? '',
      index: map['index']?.toInt() ?? 0,
      icon: map['icon'] ?? '',
      list: List<String>.from(map['list']),
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryExtraServiceEntity.fromJson(String source) => CategoryExtraServiceEntity.fromMap(json.decode(source));

  CategoryExtraServiceEntity copyWith({
    String? id,
    String? name,
    String? description,
    String? displayType,
    int? index,
    String? icon,
    List<String>? list,
  }) {
    return CategoryExtraServiceEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      displayType: displayType ?? this.displayType,
      index: index ?? this.index,
      icon: icon ?? this.icon,
      list: list ?? this.list,
    );
  }

  @override
  String toString() {
    return 'ExtraServiceEntity(id: $id, name: $name, description: $description, displayType: $displayType, index: $index, icon: $icon, list: $list)';
  }
}
