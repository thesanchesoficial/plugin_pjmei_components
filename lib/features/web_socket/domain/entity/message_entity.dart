import 'dart:convert';

import 'package:collection/collection.dart';

class MessageEntity {
  final String type;
  final Map<String, dynamic> data;
  MessageEntity({
    required this.type,
    required this.data,
  });

  MessageEntity copyWith({
    String? type,
    Map<String, dynamic>? data,
  }) {
    return MessageEntity(
      type: type ?? this.type,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'data': data,
    };
  }

  factory MessageEntity.fromMap(Map<String, dynamic> map) {
    return MessageEntity(
      type: map['type'] ?? '',
      data: Map<String, dynamic>.from(map['data']),
    );
  }

  String toJson() => json.encode(toMap());

  factory MessageEntity.fromJson(String source) => MessageEntity.fromMap(json.decode(source));

  @override
  String toString() => 'MessageEntity(type: $type, data: $data)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final mapEquals = const DeepCollectionEquality().equals;
  
    return other is MessageEntity &&
      other.type == type &&
      mapEquals(other.data, data);
  }

  @override
  int get hashCode => type.hashCode ^ data.hashCode;
}
