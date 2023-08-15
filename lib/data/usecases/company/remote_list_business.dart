import 'dart:convert';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:flutter/foundation.dart';

class RemoteListBusiness implements ListBusines {
  final HttpClient httpClient;
  final String url;

  RemoteListBusiness({required this.httpClient, required this.url});

  @override
  Future<ListCompanyResult> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return ListCompanyResult(
          count: int.tryParse((httpResponse["success"]?["count"] ?? 0).toString()) ?? 0,
          company: (httpResponse["success"]["items"] as List)
              .map((e) => CompanyEntity.fromMap(e))
              .toList());
    } catch (errorMsg) {
      throw errorMsg;
    }
  }
}

class ListCompanyResult {
  int count;
  List<CompanyEntity> company;
  ListCompanyResult({
    required this.count,
    required this.company,
  });

  ListCompanyResult copyWith({
    int? count,
    List<CompanyEntity>? company,
  }) {
    return ListCompanyResult(
      count: count ?? this.count,
      company: company ?? this.company,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'count': count,
      'company': company.map((x) => x.toMap()).toList(),
    };
  }

  factory ListCompanyResult.fromMap(Map<String, dynamic> map) {
    return ListCompanyResult(
      count: map['count']?.toInt() ?? 0,
      company: List<CompanyEntity>.from(
          map['company']?.map((x) => CompanyEntity.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory ListCompanyResult.fromJson(String source) =>
      ListCompanyResult.fromMap(json.decode(source));

  @override
  String toString() => 'ListCompanyResult(count: $count, company: $company)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ListCompanyResult &&
        other.count == count &&
        listEquals(other.company, company);
  }

  @override
  int get hashCode => count.hashCode ^ company.hashCode;
}
