import 'dart:convert';

class MeiBenefitsEntity {
  final int contributionTime;
  final String updatedAt;
  MeiBenefitsEntity({
    required this.contributionTime,
    required this.updatedAt,
  });

  MeiBenefitsEntity copyWith({
    int? contributionTime,
    String? updatedAt,
  }) {
    return MeiBenefitsEntity(
      contributionTime: contributionTime ?? this.contributionTime,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'contributionTime': contributionTime,
      'updatedAt': updatedAt,
    };
  }

  factory MeiBenefitsEntity.fromMap(Map<String, dynamic> map) {
    return MeiBenefitsEntity(
      contributionTime: map['contributionTime']?.toInt() ?? 0,
      updatedAt: map['updatedAt'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory MeiBenefitsEntity.fromJson(String source) => MeiBenefitsEntity.fromMap(json.decode(source));

  @override
  String toString() => 'MeiBenefitsEntity(contributionTime: $contributionTime, updatedAt: $updatedAt)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is MeiBenefitsEntity &&
      other.contributionTime == contributionTime &&
      other.updatedAt == updatedAt;
  }

  @override
  int get hashCode => contributionTime.hashCode ^ updatedAt.hashCode;
}
