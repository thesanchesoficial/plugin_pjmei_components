import 'dart:convert';

class TransferSettings {
  TransferSettings({
    required this.transferEnabled,
    required this.transferInterval,
    required this.transferDay,
  });

  factory TransferSettings.fromMap(Map<String, dynamic> map) {
    return TransferSettings(
      transferEnabled: map['transferEnabled'] ?? false,
      transferInterval: map['transferInterval'] ?? '',
      transferDay: map['transferDay']?.toInt() ?? 0,
    );
  }

  factory TransferSettings.fromJson(String source) => TransferSettings.fromMap(json.decode(source));
  final bool transferEnabled;
  final String transferInterval;
  final int transferDay;

  TransferSettings copyWith({
    bool? transferEnabled,
    String? transferInterval,
    int? transferDay,
  }) {
    return TransferSettings(
      transferEnabled: transferEnabled ?? this.transferEnabled,
      transferInterval: transferInterval ?? this.transferInterval,
      transferDay: transferDay ?? this.transferDay,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'transferEnabled': transferEnabled,
      'transferInterval': transferInterval,
      'transferDay': transferDay,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() => 'TransferSettings(transferEnabled: $transferEnabled, transferInterval: $transferInterval, transferDay: $transferDay)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is TransferSettings &&
      other.transferEnabled == transferEnabled &&
      other.transferInterval == transferInterval &&
      other.transferDay == transferDay;
  }

  @override
  int get hashCode => transferEnabled.hashCode ^ transferInterval.hashCode ^ transferDay.hashCode;
}
