// import 'dart:convert';

// class PedidoEntity {
//   PedidoEntity(
//       {this.id,
//       this.pix,
//       this.tipo,
//       this.app,
//       this.statusPagamento,
//       this.tipoPagamento,
//       this.transactionId,
//       this.arquivado,
//       this.numeroPedido,
//       this.troco,
//       this.taxaEntrega,
//       this.total,
//       this.last4,
//       this.subtotal,
//       this.desconto,
//       this.formaDePagamento,
//       this.formaDeEntrega,
//       this.createdAt,
//       required this.historicoPedido,
//       this.produtos,
//       this.estabelecimento,
//       this.endereco,
//       this.agendamento,
//       this.usuario});

//   factory PedidoEntity.fromJson(String source) =>
//       PedidoEntity.fromMap(json.decode(source));

//   factory PedidoEntity.fromMap(Map<String, dynamic> map) {
//     String statusPagamento = 'Desconhecido';
//     if (map['status_pagamento'] != null) {
//       if (map['status_pagamento'].toString() == 'processing') {
//         statusPagamento = 'Processando';
//       } else if (map['status_pagamento'].toString() == 'authorized') {
//         statusPagamento = 'Autorizado';
//       } else if (map['status_pagamento'].toString() == 'paid') {
//         statusPagamento = 'Pago';
//       } else if (map['status_pagamento'].toString() == 'Pago') {
//         statusPagamento = 'Pago';
//       } else if (map['status_pagamento'].toString() == 'refunded') {
//         statusPagamento = 'Estornado';
//       } else if (map['status_pagamento'].toString() == 'waiting_payment') {
//         statusPagamento = 'Aguardando pagamento';
//       } else if (map['status_pagamento'].toString() == 'pending_refund') {
//         statusPagamento = '	Aguardando estorno';
//       } else if (map['status_pagamento'].toString() == 'refused') {
//         statusPagamento = 'Recusado';
//       } else if (map['status_pagamento'].toString() == 'chargedback') {
//         statusPagamento = 'Chargeback';
//       } else if (map['status_pagamento'].toString() == 'analyzing') {
//         statusPagamento = 'Em análise manual';
//       } else if (map['status_pagamento'].toString() == 'pending_review') {
//         statusPagamento = 'Pendente de revisão manual';
//       } else if (map['status_pagamento'].toString() == 'aguardando_pagamento') {
//         statusPagamento = 'Aguardando Pagamento';
//       } else {
//         statusPagamento = 'Desconhecido';
//       }
//     }

//     return PedidoEntity(
//       id: map['id'].toString(),
//       pix: map['pix_qr_code'].toString(),
//       tipo: map['tipo'].toString(),
//       app: map['app'].toString(),
//       statusPagamento: statusPagamento,
//       tipoPagamento: map['tipoPagamento'] ?? map['tipo_pagamento'].toString(),
//       transactionId: map['transactionId'] ?? map['transaction_id'].toString(),
//       numeroPedido: map['numeroPedido'] ??
//           map['numeroPedido'] ??
//           map['numero_pedido'].toString(),
//       arquivado: map['arquivado'] ?? false,
//       troco: double.tryParse(map['troco'].toString()) ?? 0,
//       taxaEntrega: map['taxa_entrega'] == null
//           ? double.tryParse(map['taxaEntrega'].toString())
//           : double.tryParse(map['taxa_entrega'].toString()),
//       total: double.tryParse(map['total'].toString()) ?? 0,
//       last4: map['last_4'].toString(),
//       subtotal: double.tryParse(map['subtotal'].toString()),
//       desconto: double.tryParse(map['desconto'].toString()),
//       formaDePagamento:
//           map['formaDePagamento'] ?? map['forma_de_pagamento'].toString(),
//       formaDeEntrega:
//           map['formaDeEntrega'] ?? map['forma_de_entrega'].toString(),
//       createdAt: map['createdAt'] ?? map['created_at'].toString(),
//       historicoPedido: map['historico_pedido'] == null
//           ? []
//           : List<HistoricoPedidoEntity>.from(map['historico_pedido']
//               ?.map((x) => HistoricoPedidoEntity.fromMap(x))),
//       produtos: map['produtos_pedido'] == null
//           ? []
//           : List<ProdutoPedidoEntity>.from(map['produtos_pedido']
//               ?.map((x) => ProdutoPedidoEntity.fromMap(x))),
//       estabelecimento: EcommerceEntity.fromMap(map['estabelecimento'] ?? {}),
//       endereco: AddressEntity.fromMap(map['endereco'] ?? {}),
//       usuario: UsuarioEntity.fromMap(map['usuario'] ?? {}),
//       agendamento: map['agendamento'] == null
//           ? map['agendamentos'] == null
//               ? []
//               : List<AgendamentoEntity>.from(
//                   map['agendamentos']?.map((x) => AgendamentoEntity.fromMap(x)))
//           : List<AgendamentoEntity>.from(
//               map['agendamento']?.map((x) => AgendamentoEntity.fromMap(x))),
//     );
//   }
//   String? id;
//   String? pix;
//   String? tipo;
//   String? app;
//   String? statusPagamento;
//   String? tipoPagamento;
//   String? transactionId;
//   bool? arquivado;
//   String? numeroPedido;
//   num? troco;
//   num? taxaEntrega;
//   num? total;
//   String? last4;
//   num? subtotal;
//   num? desconto;
//   String? formaDePagamento;
//   String? formaDeEntrega;
//   String? createdAt;
//   List<HistoricoPedidoEntity> historicoPedido;
//   List<ProdutoPedidoEntity>? produtos;
//   EcommerceEntity? estabelecimento;
//   AddressEntity? endereco;
//   List<AgendamentoEntity>? agendamento;
//   UsuarioEntity? usuario;

//   String toJson() => json.encode(toMap());

//   PedidoEntity copyWith({
//     String? id,
//     String? pix,
//     String? tipo,
//     String? app,
//     String? statusPagamento,
//     String? tipoPagamento,
//     String? transactionId,
//     bool? arquivado,
//     String? numeroPedido,
//     num? troco,
//     num? taxaEntrega,
//     num? total,
//     String? last4,
//     num? subtotal,
//     num? desconto,
//     String? formaDePagamento,
//     String? formaDeEntrega,
//     String? createdAt,
//     List<HistoricoPedidoEntity>? historicoPedido,
//     List<ProdutoPedidoEntity>? produtos,
//     EcommerceEntity? estabelecimento,
//     AddressEntity? endereco,
//     List<AgendamentoEntity>? agendamento,
//     UsuarioEntity? usuario,
//   }) {
//     return PedidoEntity(
//       id: id ?? this.id,
//       pix: pix ?? this.pix,
//       tipo: tipo ?? this.tipo,
//       app: app ?? this.app,
//       statusPagamento: statusPagamento ?? this.statusPagamento,
//       tipoPagamento: tipoPagamento ?? this.tipoPagamento,
//       transactionId: transactionId ?? this.transactionId,
//       arquivado: arquivado ?? this.arquivado,
//       numeroPedido: numeroPedido ?? this.numeroPedido,
//       troco: troco ?? this.troco,
//       taxaEntrega: taxaEntrega ?? this.taxaEntrega,
//       total: total ?? this.total,
//       last4: last4 ?? this.last4,
//       subtotal: subtotal ?? this.subtotal,
//       desconto: desconto ?? this.desconto,
//       formaDePagamento: formaDePagamento ?? this.formaDePagamento,
//       formaDeEntrega: formaDeEntrega ?? this.formaDeEntrega,
//       createdAt: createdAt ?? this.createdAt,
//       historicoPedido: historicoPedido ?? this.historicoPedido,
//       produtos: produtos ?? this.produtos,
//       estabelecimento: estabelecimento ?? this.estabelecimento,
//       endereco: endereco ?? this.endereco,
//       agendamento: agendamento ?? this.agendamento,
//       usuario: usuario ?? this.usuario,
//     );
//   }

//   @override
//   String toString() {
//     return 'Pedido(id: $id, pix: $pix, tipo: $tipo, app: $app, statusPagamento: $statusPagamento, tipoPagamento: $tipoPagamento, transactionId: $transactionId, arquivado: $arquivado, numeroPedido: $numeroPedido, troco: $troco, taxaEntrega: $taxaEntrega, total: $total, last4: $last4, subtotal: $subtotal, desconto: $desconto, formaDePagamento: $formaDePagamento, formaDeEntrega: $formaDeEntrega, createdAt: $createdAt, historicoPedido: $historicoPedido, produtos: $produtos, estabelecimento: $estabelecimento, endereco: $endereco, agendamento: $agendamento)';
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'pix': pix,
//       'tipo': tipo,
//       'app': app,
//       'statusPagamento': statusPagamento,
//       'tipoPagamento': tipoPagamento,
//       'transactionId': transactionId,
//       'arquivado': arquivado,
//       'numeroPedido': numeroPedido,
//       'numero_pedido': numeroPedido,
//       'troco': troco,
//       'taxaEntrega': taxaEntrega,
//       'total': total,
//       'last4': last4,
//       'subtotal': subtotal,
//       'desconto': desconto,
//       'formaDePagamento': formaDePagamento,
//       'formaDeEntrega': formaDeEntrega,
//       'createdAt': createdAt,
//       'historicoPedido': historicoPedido.map((x) => x.toMap()).toList(),
//       'produtos': produtos?.map((x) => x.toMap()).toList(),
//       'produtos_pedido': produtos?.map((x) => x.toMap()).toList(),
//       'estabelecimento': estabelecimento?.toMap(),
//       'endereco': endereco?.toMap(),
//       'agendamento': agendamento?.map((x) => x.toMap()).toList(),
//       'usuario': usuario?.toMap(),
//     };
//   }
// }
