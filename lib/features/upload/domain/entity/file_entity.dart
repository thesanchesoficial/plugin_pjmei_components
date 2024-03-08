import 'dart:convert';

class FileEntity {
  String url;
  FileEntity({
    required this.url,
  });

  FileEntity copyWith({
    String? url,
  }) {
    return FileEntity(
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'url': url,
    };
  }

  factory FileEntity.fromMap(Map<String, dynamic> map) {
    return FileEntity(
      url: map['url'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory FileEntity.fromJson(String source) => FileEntity.fromMap(json.decode(source));

  @override
  String toString() => 'FileEntity(url: $url)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is FileEntity &&
      other.url == url;
  }

  @override
  int get hashCode => url.hashCode;
}
