import 'dart:convert';

class ImageEntity {
  ImageEntity({
    this.id,
    this.principal,
    this.url,
  });

  factory ImageEntity.fromMap(Map<String, dynamic> map) {
    return ImageEntity(
      id: map['id'].toString(),
      principal: map['principal'],
      url: map['url'].toString(),
    );
  }

  factory ImageEntity.fromJson(String source) => ImageEntity.fromMap(json.decode(source));

  String? id;
  bool? principal;
  String? url;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'principal': principal,
      'url': url,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() => 'ImageEntity(id: $id, principal: $principal, url: $url)';

  ImageEntity copyWith({
    String? id,
    bool? principal,
    String? url,
  }) {
    return ImageEntity(
      id: id ?? this.id,
      principal: principal ?? this.principal,
      url: url ?? this.url,
    );
  }
}
