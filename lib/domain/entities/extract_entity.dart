import 'dart:convert';

class ExtractEntity {
  ExtractEntity({
    this.waitingFunds,
    this.transferred,
    this.available,
  });

  factory ExtractEntity.fromMap(Map<String, dynamic> map) {
    return ExtractEntity(
      waitingFunds: map['waitingFunds']?.toInt() ?? map['waiting_funds']?.toInt() ?? 0,
      transferred: map['transferred']?.toInt() ?? map['transferred']?.toInt() ?? 0,
      available: map['available']?.toInt() ?? map['available']?.toInt() ?? 0,
    );
  }

  factory ExtractEntity.fromJson(String source) => ExtractEntity.fromMap(json.decode(source));
  int? waitingFunds;
  int? transferred;
  int? available;

  ExtractEntity copyWith({
    int? waitingFunds,
    int? transferred,
    int? available,
  }) {
    return ExtractEntity(
      waitingFunds: waitingFunds ?? this.waitingFunds,
      transferred: transferred ?? this.transferred,
      available: available ?? this.available,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'waitingFunds': waitingFunds,
      'transferred': transferred,
      'available': available,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() => 'ExtractEntity(waitingFunds: $waitingFunds, transferred: $transferred, available: $available)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ExtractEntity &&
      other.waitingFunds == waitingFunds &&
      other.transferred == transferred &&
      other.available == available;
  }

  @override
  int get hashCode => waitingFunds.hashCode ^ transferred.hashCode ^ available.hashCode;
}
