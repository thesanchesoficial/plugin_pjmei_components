import 'dart:convert';

import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class StyleWhiteLabelEntity {
  String lightColorScheme;
  String darkColorScheme;
  ResourceWhiteLabelEntity resource;
  StyleWhiteLabelEntity({
    required this.lightColorScheme,
    required this.darkColorScheme,
    required this.resource,
  });

  StyleWhiteLabelEntity copyWith({
    String? lightColorScheme,
    String? darkColorScheme,
    ResourceWhiteLabelEntity? resource,
  }) {
    return StyleWhiteLabelEntity(
      lightColorScheme: lightColorScheme ?? this.lightColorScheme,
      darkColorScheme: darkColorScheme ?? this.darkColorScheme,
      resource: resource ?? this.resource,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'lightColorScheme': lightColorScheme,
      'darkColorScheme': darkColorScheme,
      'resource': resource.toMap(),
    };
  }

  factory StyleWhiteLabelEntity.fromMap(Map<String, dynamic> map) {
    return StyleWhiteLabelEntity(
      lightColorScheme: map['lightColorScheme'] ?? '',
      darkColorScheme: map['darkColorScheme'] ?? '',
      resource: ResourceWhiteLabelEntity.fromMap(map['resource']),
    );
  }

  String toJson() => json.encode(toMap());

  factory StyleWhiteLabelEntity.fromJson(String source) => StyleWhiteLabelEntity.fromMap(json.decode(source));

  @override
  String toString() => 'StyleWhiteLabelEntity(lightColorScheme: $lightColorScheme, darkColorScheme: $darkColorScheme, resource: $resource)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is StyleWhiteLabelEntity &&
      other.lightColorScheme == lightColorScheme &&
      other.darkColorScheme == darkColorScheme &&
      other.resource == resource;
  }

  @override
  int get hashCode => lightColorScheme.hashCode ^ darkColorScheme.hashCode ^ resource.hashCode;
}
