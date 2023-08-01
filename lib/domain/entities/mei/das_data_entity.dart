import 'dart:convert';

class DasDataEntity {

  DasDataEntity({
    this.id,
    this.month,
    this.year,
    this.indexMonth,
    this.verified,
    this.situation,
    this.interest,
    this.fines,
    this.total,
    this.dueDate,
    this.url,
    this.receptionDate,
    this.updated_at,
  });

  factory DasDataEntity.fromMap(Map<String, dynamic> map) {
    return DasDataEntity(
      id: map['id'] ?? '',
      month: map['month'] ?? '',
      year: map['year'] ?? '',
      indexMonth: map['indexMonth']?.toInt() ?? 0,
      verified: map['verified'] ?? false,
      situation: map['situation'] ?? '',
      interest: map['interest'] ?? '',
      fines: map['fines'] ?? '',
      total: map['total'] ?? '',
      dueDate: map['dueDate'] ?? '',
      url: map['url'] ?? '',
      receptionDate: map['receptionDate'] ?? '',
      updated_at: map['updated_at'] ?? '',
    );
  }

  factory DasDataEntity.fromJson(String source) => DasDataEntity.fromMap(json.decode(source));
  String? id;
  String? month;
  String? year;
  int? indexMonth;
  bool? verified;
  String? situation;
  String? interest;
  String? fines;
  String? total;
  String? dueDate;
  String? url;
  String? receptionDate;
  String? updated_at;
  
  DasDataEntity copyWith({
    String? id,
    String? month,
    String? year,
    int? indexMonth,
    bool? verified,
    String? situation,
    String? interest,
    String? fines,
    String? total,
    String? dueDate,
    String? url,
    String? receptionDate,
    String? updated_at,
  }) {
    return DasDataEntity(
      id: id ?? this.id,
      month: month ?? this.month,
      year: year ?? this.year,
      indexMonth: indexMonth ?? this.indexMonth,
      verified: verified ?? this.verified,
      situation: situation ?? this.situation,
      interest: interest ?? this.interest,
      fines: fines ?? this.fines,
      total: total ?? this.total,
      dueDate: dueDate ?? this.dueDate,
      url: url ?? this.url,
      receptionDate: receptionDate ?? this.receptionDate,
      updated_at: updated_at ?? this.updated_at,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'month': month,
      'year': year,
      'indexMonth': indexMonth,
      'verified': verified,
      'situation': situation,
      'interest': interest,
      'fines': fines,
      'total': total,
      'dueDate': dueDate,
      'url': url,
      'receptionDate': receptionDate,
      'updated_at': updated_at,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'DasDataEntity(id: $id, month: $month, year: $year, indexMonth: $indexMonth, verified: $verified, situation: $situation, interest: $interest, fines: $fines, total: $total, dueDate: $dueDate, url: $url, receptionDate: $receptionDate, updated_at: $updated_at)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is DasDataEntity &&
      other.id == id &&
      other.month == month &&
      other.year == year &&
      other.indexMonth == indexMonth &&
      other.verified == verified &&
      other.situation == situation &&
      other.interest == interest &&
      other.fines == fines &&
      other.total == total &&
      other.dueDate == dueDate &&
      other.url == url &&
      other.receptionDate == receptionDate &&
      other.updated_at == updated_at;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      month.hashCode ^
      year.hashCode ^
      indexMonth.hashCode ^
      verified.hashCode ^
      situation.hashCode ^
      interest.hashCode ^
      fines.hashCode ^
      total.hashCode ^
      dueDate.hashCode ^
      url.hashCode ^
      receptionDate.hashCode ^
      updated_at.hashCode;
  }
}
