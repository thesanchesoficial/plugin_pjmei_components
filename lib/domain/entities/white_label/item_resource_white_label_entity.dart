import 'dart:convert';

class ItemResourceWhiteLabelEntity {
  bool enabled;
  int limit;
  ItemResourceWhiteLabelEntity({
    required this.enabled,
    required this.limit,
  });

  ItemResourceWhiteLabelEntity copyWith({
    bool? enabled,
    int? limit,
  }) {
    return ItemResourceWhiteLabelEntity(
      enabled: enabled ?? this.enabled,
      limit: limit ?? this.limit,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'enabled': enabled,
      'limit': limit,
    };
  }

  factory ItemResourceWhiteLabelEntity.fromMap(Map<String, dynamic> map) {
    return ItemResourceWhiteLabelEntity(
      enabled: map['enabled'] ?? false,
      limit: map['limit']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemResourceWhiteLabelEntity.fromJson(String source) => ItemResourceWhiteLabelEntity.fromMap(json.decode(source));

  @override
  String toString() => 'ItemResourceWhiteLabelEntity(enabled: $enabled, limit: $limit)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ItemResourceWhiteLabelEntity &&
      other.enabled == enabled &&
      other.limit == limit;
  }

  @override
  int get hashCode => enabled.hashCode ^ limit.hashCode;
}
