import 'dart:convert';

import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class BillEntity {
  BillEntity({
    required this.id,
    required this.totalPedidos,
    required this.barCode,
    required this.taxa,
    required this.dataInicio,
    required this.dataTermino,
    required this.statusPagamento,
    required this.urlBoleto,
    required this.createdAt,
    required this.pedidos,
  });

  factory BillEntity.fromMap(Map<String, dynamic> map) {
    String _payment = '';
    switch (map['status_pagamento']) {
      case 'paid':
        _payment = 'Pago';
        break;
      case 'waiting_payment':
        _payment = 'Aguardando pagamento';
        break;
      default:
        if (DateTime.parse(map['data_termino'])
            .add(const Duration(days: 20))
            .isAfter(DateTime.now())) {
          _payment = 'Não pago';
        }
        _payment = 'Em aberto';
        break;
    }

    return BillEntity(
      id: map['id'],
      totalPedidos: int.tryParse(map['total_pedidos'].toString()) ?? 0,
      barCode: map['bar_code'],
      taxa: num.tryParse(map['taxa'].toString()) ?? 0,
      dataInicio: map['data_inicio'],
      dataTermino: map['data_termino'],
      statusPagamento: _payment,
      urlBoleto: map['url_boleto'],
      createdAt: map['created_at'],
      pedidos: map['pedidos'] == null
        ? []
        : List<OrderEntity>.from(map['pedidos']?.map((x) => OrderEntity.fromMap(x))),
    );
  }

  factory BillEntity.fromJson(String source) => BillEntity.fromMap(json.decode(source));

  final String id;
  final int totalPedidos;
  final String barCode;
  final num taxa;
  final String dataInicio;
  final String dataTermino;
  final String statusPagamento;
  final String urlBoleto;
  final String createdAt;
  final List<OrderEntity> pedidos;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'totalPedidos': totalPedidos,
      'total_pedidos': totalPedidos,
      'barCode': barCode,
      'bar_code': barCode,
      'taxa': taxa,
      'dataInicio': dataInicio,
      'data_inicio': dataInicio,
      'dataTermino': dataTermino,
      'data_termino': dataTermino,
      'statusPagamento': statusPagamento,
      'status_pagamento': statusPagamento,
      'urlBoleto': urlBoleto,
      'url_boleto': urlBoleto,
      'createdAt': createdAt,
      'created_at': createdAt,
      'pedidos': pedidos.map((x) => x.toMap()).toList(),
    };
  }

  String toJson() => json.encode(toMap());

  BillEntity copyWith({
    String? id,
    int? totalPedidos,
    String? barCode,
    num? taxa,
    String? dataInicio,
    String? dataTermino,
    String? statusPagamento,
    String? urlBoleto,
    String? createdAt,
    List<OrderEntity>? pedidos,
  }) {
    return BillEntity(
      id: id ?? this.id,
      totalPedidos: totalPedidos ?? this.totalPedidos,
      barCode: barCode ?? this.barCode,
      taxa: taxa ?? this.taxa,
      dataInicio: dataInicio ?? this.dataInicio,
      dataTermino: dataTermino ?? this.dataTermino,
      statusPagamento: statusPagamento ?? this.statusPagamento,
      urlBoleto: urlBoleto ?? this.urlBoleto,
      createdAt: createdAt ?? this.createdAt,
      pedidos: pedidos ?? this.pedidos,
    );
  }

  @override
  String toString() {
    return 'BillEntity(id: $id, totalPedidos: $totalPedidos, barCode: $barCode, taxa: $taxa, dataInicio: $dataInicio, dataTermino: $dataTermino, statusPagamento: $statusPagamento, urlBoleto: $urlBoleto, createdAt: $createdAt, pedidos: $pedidos)';
  }
}
