import 'dart:convert';

import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class StyleWhiteLabelEntity {
  String lightColorScheme;
  String darkColorScheme;
  ImageWhiteLabelEntity image;
  StyleWhiteLabelEntity({
    required this.lightColorScheme,
    required this.darkColorScheme,
    required this.image,
  });

  StyleWhiteLabelEntity copyWith({
    String? lightColorScheme,
    String? darkColorScheme,
    ImageWhiteLabelEntity? image,
  }) {
    return StyleWhiteLabelEntity(
      lightColorScheme: lightColorScheme ?? this.lightColorScheme,
      darkColorScheme: darkColorScheme ?? this.darkColorScheme,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'lightColorScheme': lightColorScheme,
      'darkColorScheme': darkColorScheme,
      'image': image.toMap(),
    };
  }

  factory StyleWhiteLabelEntity.fromMap(Map<String, dynamic> map) {
    return StyleWhiteLabelEntity(
      lightColorScheme: map['lightColorScheme'] ?? '',
      darkColorScheme: map['darkColorScheme'] ?? '',
      image: ImageWhiteLabelEntity.fromMap(map['image']),
    );
  }

  String toJson() => json.encode(toMap());

  factory StyleWhiteLabelEntity.fromJson(String source) => StyleWhiteLabelEntity.fromMap(json.decode(source));

  @override
  String toString() => 'StyleWhiteLabelEntity(lightColorScheme: $lightColorScheme, darkColorScheme: $darkColorScheme, image: $image)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is StyleWhiteLabelEntity &&
      other.lightColorScheme == lightColorScheme &&
      other.darkColorScheme == darkColorScheme &&
      other.image == image;
  }

  @override
  int get hashCode => lightColorScheme.hashCode ^ darkColorScheme.hashCode ^ image.hashCode;
}
