import 'dart:convert';

class ImageWhiteLabelEntity {
  String logoMenuWeb;
  String logoMenuMobile;
  String logoSplash;
  String favicon;
  String icon;
  ImageWhiteLabelEntity({
    required this.logoMenuWeb,
    required this.logoMenuMobile,
    required this.logoSplash,
    required this.favicon,
    required this.icon,
  });

  ImageWhiteLabelEntity copyWith({
    String? logoMenuWeb,
    String? logoMenuMobile,
    String? logoSplash,
    String? favicon,
    String? icon,
  }) {
    return ImageWhiteLabelEntity(
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

  factory ImageWhiteLabelEntity.fromMap(Map<String, dynamic> map) {
    return ImageWhiteLabelEntity(
      logoMenuWeb: map['logoMenuWeb'] ?? '',
      logoMenuMobile: map['logoMenuMobile'] ?? '',
      logoSplash: map['logoSplash'] ?? '',
      favicon: map['favicon'] ?? '',
      icon: map['icon'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ImageWhiteLabelEntity.fromJson(String source) => ImageWhiteLabelEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ResourceWhiteLabelEntity(logoMenuWeb: $logoMenuWeb, logoMenuMobile: $logoMenuMobile, logoSplash: $logoSplash, favicon: $favicon, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ImageWhiteLabelEntity &&
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
