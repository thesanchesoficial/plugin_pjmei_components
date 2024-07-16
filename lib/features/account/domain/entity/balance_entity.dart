import 'dart:convert';

class BalanceEntity {
  final int waitingFunds;
  final int transferred;
  final int available;
  BalanceEntity({
    required this.waitingFunds,
    required this.transferred,
    required this.available,
  });

  BalanceEntity copyWith({
    int? waitingFunds,
    int? transferred,
    int? available,
  }) {
    return BalanceEntity(
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

  factory BalanceEntity.fromMap(Map<String, dynamic> map) {
    return BalanceEntity(
      waitingFunds: map['waitingFunds']?.toInt() ?? 0,
      transferred: map['transferred']?.toInt() ?? 0,
      available: map['available']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory BalanceEntity.fromJson(String source) => BalanceEntity.fromMap(json.decode(source));

  @override
  String toString() => 'BalanceEntity(waitingFunds: $waitingFunds, transferred: $transferred, available: $available)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is BalanceEntity &&
      other.waitingFunds == waitingFunds &&
      other.transferred == transferred &&
      other.available == available;
  }

  @override
  int get hashCode => waitingFunds.hashCode ^ transferred.hashCode ^ available.hashCode;
}
