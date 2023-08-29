import 'dart:convert';

class ResourceWhiteLabelEntity {
  String logoMenuWeb;
  String logoMenuMobile;
  String logoSplash;
  String favicon;
  String icon;
  ResourceWhiteLabelEntity({
    required this.logoMenuWeb,
    required this.logoMenuMobile,
    required this.logoSplash,
    required this.favicon,
    required this.icon,
  });

  ResourceWhiteLabelEntity copyWith({
    String? logoMenuWeb,
    String? logoMenuMobile,
    String? logoSplash,
    String? favicon,
    String? icon,
  }) {
    return ResourceWhiteLabelEntity(
      logoMenuWeb: logoMenuWeb ?? this.logoMenuWeb,
      logoMenuMobile: logoMenuMobile ?? this.logoMenuMobile,
      logoSplash: logoSplash ?? this.logoSplash,
      favicon: favicon ?? this.favicon,
      icon: icon ?? this.icon,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'logoMenuWeb': logoMenuWeb,
      'logoMenuMobile': logoMenuMobile,
      'logoSplash': logoSplash,
      'favicon': favicon,
      'icon': icon,
    };
  }

  factory ResourceWhiteLabelEntity.fromMap(Map<String, dynamic> map) {
    return ResourceWhiteLabelEntity(
      logoMenuWeb: map['logoMenuWeb'] ?? '',
      logoMenuMobile: map['logoMenuMobile'] ?? '',
      logoSplash: map['logoSplash'] ?? '',
      favicon: map['favicon'] ?? '',
      icon: map['icon'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ResourceWhiteLabelEntity.fromJson(String source) => ResourceWhiteLabelEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ResourceWhiteLabelEntity(logoMenuWeb: $logoMenuWeb, logoMenuMobile: $logoMenuMobile, logoSplash: $logoSplash, favicon: $favicon, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ResourceWhiteLabelEntity &&
      other.logoMenuWeb == logoMenuWeb &&
      other.logoMenuMobile == logoMenuMobile &&
      other.logoSplash == logoSplash &&
      other.favicon == favicon &&
      other.icon == icon;
  }

  @override
  int get hashCode {
    return logoMenuWeb.hashCode ^
      logoMenuMobile.hashCode ^
      logoSplash.hashCode ^
      favicon.hashCode ^
      icon.hashCode;
  }
}
