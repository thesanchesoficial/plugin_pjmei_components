import 'dart:convert';

class ItemEnvironmentWhiteLabelEntity {
  bool enabled;
  int limit;
  ItemEnvironmentWhiteLabelEntity({
    required this.enabled,
    required this.limit,
  });

  ItemEnvironmentWhiteLabelEntity copyWith({
    bool? enabled,
    int? limit,
  }) {
    return ItemEnvironmentWhiteLabelEntity(
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

  factory ItemEnvironmentWhiteLabelEntity.fromMap(Map<String, dynamic> map) {
    return ItemEnvironmentWhiteLabelEntity(
      enabled: map['enabled'] ?? false,
      limit: map['limit']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemEnvironmentWhiteLabelEntity.fromJson(String source) => ItemEnvironmentWhiteLabelEntity.fromMap(json.decode(source));

  @override
  String toString() => 'ItemEnvironmentWhiteLabelEntity(enabled: $enabled, limit: $limit)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ItemEnvironmentWhiteLabelEntity &&
      other.enabled == enabled &&
      other.limit == limit;
  }

  @override
  int get hashCode => enabled.hashCode ^ limit.hashCode;
}
