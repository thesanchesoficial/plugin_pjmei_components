import 'dart:convert';

class KycDetails {
  final String status;
  final String statusReason;
  final String? base64QrCode;
  final String? url;
  final String? expiresAt;
  KycDetails({
    required this.status,
    required this.statusReason,
    this.base64QrCode,
    this.url,
    this.expiresAt,
  });

  KycDetails copyWith({
    String? status,
    String? statusReason,
    String? base64QrCode,
    String? url,
    String? expiresAt,
  }) {
    return KycDetails(
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
      base64QrCode: base64QrCode ?? this.base64QrCode,
      url: url ?? this.url,
      expiresAt: expiresAt ?? this.expiresAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'statusReason': statusReason,
      'base64QrCode': base64QrCode,
      'url': url,
      'expiresAt': expiresAt,
    };
  }

  factory KycDetails.fromMap(Map<String, dynamic> map) {
    return KycDetails(
      status: map['status'] ?? '',
      statusReason: map['statusReason'] ?? '',
      base64QrCode: map['base64QrCode'],
      url: map['url'],
      expiresAt: map['expiresAt'],
    );
  }

  String toJson() => json.encode(toMap());

  factory KycDetails.fromJson(String source) => KycDetails.fromMap(json.decode(source));

  @override
  String toString() {
    return 'KycDetails(status: $status, statusReason: $statusReason, base64QrCode: $base64QrCode, url: $url, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is KycDetails &&
      other.status == status &&
      other.statusReason == statusReason &&
      other.base64QrCode == base64QrCode &&
      other.url == url &&
      other.expiresAt == expiresAt;
  }

  @override
  int get hashCode {
    return status.hashCode ^
      statusReason.hashCode ^
      base64QrCode.hashCode ^
      url.hashCode ^
      expiresAt.hashCode;
  }
}
