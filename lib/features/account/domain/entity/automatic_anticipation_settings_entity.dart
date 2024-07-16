import 'dart:convert';

class AutomaticAnticipationSettings {
  AutomaticAnticipationSettings({
    required this.enabled,
    required this.type,
    required this.volumePercentage,
    this.delay,
  });

  factory AutomaticAnticipationSettings.fromMap(Map<String, dynamic> map) {
    return AutomaticAnticipationSettings(
      enabled: map['enabled'] ?? false,
      type: map['type'] ?? '',
      volumePercentage: (map['volumePercentage'] ?? '').toString(),
      delay: map['delay'] != null ? '${map['delay']}' : null,
    );
  }

  factory AutomaticAnticipationSettings.fromJson(String source) => AutomaticAnticipationSettings.fromMap(json.decode(source));
  final bool enabled;
  final String type;
  final String volumePercentage;
  final String? delay;

  AutomaticAnticipationSettings copyWith({
    bool? enabled,
    String? type,
    String? volumePercentage,
    String? delay,
  }) {
    return AutomaticAnticipationSettings(
      enabled: enabled ?? this.enabled,
      type: type ?? this.type,
      volumePercentage: volumePercentage ?? this.volumePercentage,
      delay: delay ?? this.delay,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'enabled': enabled,
      'type': type,
      'volumePercentage': volumePercentage,
      'delay': delay,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'AutomaticAnticipationSettings(enabled: $enabled, type: $type, volumePercentage: $volumePercentage, delay: $delay)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is AutomaticAnticipationSettings &&
      other.enabled == enabled &&
      other.type == type &&
      other.volumePercentage == volumePercentage &&
      other.delay == delay;
  }

  @override
  int get hashCode {
    return enabled.hashCode ^
      type.hashCode ^
      volumePercentage.hashCode ^
      delay.hashCode;
  }
}
