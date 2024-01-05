import 'dart:convert';

class LinkWhiteLabelEntity {
  String termsOfUse;
  String privacyPolicy;
  String lgpd;
  String website;
  LinkWhiteLabelEntity({
    required this.termsOfUse,
    required this.privacyPolicy,
    required this.lgpd,
    required this.website,
  });

  LinkWhiteLabelEntity copyWith({
    String? termsOfUse,
    String? privacyPolicy,
    String? website,
    String? lgpd,
  }) {
    return LinkWhiteLabelEntity(
      termsOfUse: termsOfUse ?? this.termsOfUse,
      privacyPolicy: privacyPolicy ?? this.privacyPolicy,
      lgpd: lgpd ?? this.lgpd,
      website: website ?? this.website,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'termsOfUse': termsOfUse,
      'privacyPolicy': privacyPolicy,
      'lgpd': lgpd,
      'website': website,
    };
  }

  factory LinkWhiteLabelEntity.fromMap(Map<String, dynamic> map) {
    return LinkWhiteLabelEntity(
      termsOfUse: map['termsOfUse'] ?? '',
      privacyPolicy: map['privacyPolicy'] ?? '',
      lgpd: map['lgpd'] ?? '',
      website: map['website'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory LinkWhiteLabelEntity.fromJson(String source) => LinkWhiteLabelEntity.fromMap(json.decode(source));

  @override
  String toString() => 'LinkWhiteLabelEntity(termsOfUse: $termsOfUse, privacyPolicy: $privacyPolicy, lgpd: $lgpd, website: $website)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is LinkWhiteLabelEntity &&
      other.termsOfUse == termsOfUse &&
      other.privacyPolicy == privacyPolicy &&
      other.lgpd == lgpd &&
      other.website == website;
  }

  @override
  int get hashCode => termsOfUse.hashCode ^ privacyPolicy.hashCode ^ website.hashCode ^ lgpd.hashCode;
}
