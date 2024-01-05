import 'dart:convert';

// Uma entidade pai que filtra os dados
// Uma entidade filho que é opcional e filtra as categorias

class FinanceDataReportEntity {
  List<String>? categoryId;
  List<String>? bankAccountId;
  List<String>? creditCardId;

  FinanceDataReportEntity(
  {
    this.categoryId,
    this.bankAccountId,
    this.creditCardId,
  });

  FinanceDataReportEntity copyWith({
    List<String>? categoryId,
    List<String>? bankAccountId,
    List<String>? creditCardId,
  }) {
    return FinanceDataReportEntity(
      categoryId: categoryId ?? this.categoryId,
      bankAccountId: bankAccountId ?? this.bankAccountId,
      creditCardId: creditCardId ?? this.creditCardId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'categoryId': categoryId != null ? categoryId : [],
      'bankAccountId': bankAccountId != null ? bankAccountId : [],
      'creditCardId': creditCardId != null ? creditCardId : [],
    };
  }

  factory FinanceDataReportEntity.fromMap(Map<String, dynamic> map) {
    return FinanceDataReportEntity(
      categoryId: map['categoryId'] ?? '',
      bankAccountId: map['bankAccountId'] ?? '',
      creditCardId: map['creditCardId'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory FinanceDataReportEntity.fromJson(String source) => FinanceDataReportEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'FinanceDataReportEntity()';
  }
}

class FinanceReportEntity {
  num? month;
  num? year;
  String? type; // monthly, yearly, period
  FinanceDataReportEntity? data;
  String? startDate;
  String? endDate;

  FinanceReportEntity(
  {
    this.month,
    this.year,
    this.type,
    this.data,
    this.startDate,
    this.endDate
  });

  FinanceReportEntity copyWith({
    num? month,
    num? year,
    String? type,
    FinanceDataReportEntity? data,
    String? startDate,
    String? endDate,
  }) {
    return FinanceReportEntity(
      month: month ?? this.month,
      year: year ?? this.year,
      type: type ?? this.type,
      data: data ?? this.data,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'month': month,
      'year': year,
      'type': type,
      'categoryId': data != null ? data!.categoryId : null,
      'bankAccountId': data != null ? data!.bankAccountId : null,
      'creditCardId': data != null ? data!.creditCardId : null,
      'startDate': startDate,
      'endDate': endDate,
    };
  }

  factory FinanceReportEntity.fromMap(Map<String, dynamic> map) {
    return FinanceReportEntity(
      month: map['month'] ?? '',
      year: map['year'] ?? '',
      type: map['type'] ?? '',
      // categoryId: map['categoryId'] ?? '',
      // bankAccountId: map['bankAccountId'] ?? '',
      // creditCardId: map['creditCardId'] ?? '',
      // data: map['data'] ?? '',
      startDate: map['startDate'] ?? '',
      endDate: map['endDate'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory FinanceReportEntity.fromJson(String source) => FinanceReportEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'FinanceReportEntity(year: $year, month: $month, type: $type)';
  }
}

class FinanceResultReportEntity {
  DateTime? date;
  num? cashFlow;
  num? profit;
  num? loss;

  FinanceResultReportEntity(
  {
    this.date,
    this.cashFlow,
    this.profit,
    this.loss
  });

  FinanceResultReportEntity copyWith({
    DateTime? date,
    num? cashFlow,
    num? profit,
    num? loss,
  }) {
    return FinanceResultReportEntity(
      date: date ?? this.date,
      cashFlow: cashFlow ?? this.cashFlow,
      profit: profit ?? this.profit,
      loss: loss ?? this.loss,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'date': date != null ? date : [],
      'cashFlow': cashFlow != null ? cashFlow : 0,
      'profit': profit != null ? profit : 0,
      'loss': loss != null ? loss : 0,
    };
  }

  factory FinanceResultReportEntity.fromMap(Map<String, dynamic> map) {
    return FinanceResultReportEntity(
      date: map['date'] != null ? DateTime.parse(map['date']) : DateTime.now(),
      cashFlow: map['cashFlow'] != null ? num.parse(map['cashFlow'].toString()) : 0,
      profit: map['profit'] != null ? num.parse(map['profit'].toString()) : 0,
      loss: map['loss'] != null ? num.parse(map['loss'].toString()) : 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory FinanceResultReportEntity.fromJson(String source) => FinanceResultReportEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'FinanceResultReportEntity(date: ${date!.day.toString().padLeft(2, "0")}/${date!.month.toString().padLeft(2, "0")}/${date!.year}, cashFlow: $cashFlow)';
  }
}