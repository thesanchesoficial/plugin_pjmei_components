import 'dart:convert';

class FileMediaAwsEntity {

  FileMediaAwsEntity({
    this.ETag,
    this.Location,
    this.key,
    this.Key,
    this.Bucket,
  });

  factory FileMediaAwsEntity.fromMap(Map<String, dynamic> map) {
    return FileMediaAwsEntity(
      ETag: map['ETag'] ?? '',
      Location: map['Location'] ?? '',
      key: map['key'] ?? '',
      Key: map['Key'] ?? '',
      Bucket: map['Bucket'] ?? '',
    );
  }

  factory FileMediaAwsEntity.fromJson(String source) => FileMediaAwsEntity.fromMap(json.decode(source));
  String? ETag;
  String? Location;
  String? key;
  String? Key;
  String? Bucket;

  FileMediaAwsEntity copyWith({
    String? ETag,
    String? Location,
    String? key,
    String? Key,
    String? Bucket,
  }) {
    return FileMediaAwsEntity(
      ETag: ETag ?? this.ETag,
      Location: Location ?? this.Location,
      key: key ?? this.key,
      Key: Key ?? this.Key,
      Bucket: Bucket ?? this.Bucket,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'ETag': ETag,
      'Location': Location,
      'key': key,
      'Key': Key,
      'Bucket': Bucket,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'FileMediaAwsEntity(ETag: $ETag, Location: $Location, key: $key, Key: $Key, Bucket: $Bucket)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is FileMediaAwsEntity &&
      other.ETag == ETag &&
      other.Location == Location &&
      other.key == key &&
      other.Key == Key &&
      other.Bucket == Bucket;
  }

  @override
  int get hashCode {
    return ETag.hashCode ^
      Location.hashCode ^
      key.hashCode ^
      Key.hashCode ^
      Bucket.hashCode;
  }
}
