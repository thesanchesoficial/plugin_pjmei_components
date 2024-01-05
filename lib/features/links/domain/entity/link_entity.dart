import 'dart:convert';

class LinkEntity {
  
  LinkEntity({
    this.id,
    this.name,
    this.url,
    this.type,
  });

  factory LinkEntity.fromMap(Map<String, dynamic> map) {
    return LinkEntity(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      url: map['url'] ?? '',
      type: map['type'] ?? '',
    );
  }

  factory LinkEntity.fromJson(String source) => LinkEntity.fromMap(json.decode(source));
  final String? id;
  final String? name;
  final String? url;
  final String? type;

  LinkEntity copyWith({
    String? id,
    String? name,
    String? url,
    String? type,
  }) {
    return LinkEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      url: url ?? this.url,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'url': url,
      'type': type,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() => 'LinkEntity(id: $id, name: $name, url: $url, type: $type)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is LinkEntity &&
      other.id == id &&
      other.name == name &&
      other.type == type &&
      other.url == url;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ url.hashCode ^ type.hashCode;
}
