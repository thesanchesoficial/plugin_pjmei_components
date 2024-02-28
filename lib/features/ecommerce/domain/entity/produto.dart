// import 'dart:convert';
// import 'package:flutter/foundation.dart';
// import 'package:pjmei_white_label_ui/features/lojaonline/models/agendamento.dart';
// import 'package:pjmei_white_label_ui/features/lojaonline/models/cronograma.dart';
// import 'package:pjmei_white_label_ui/features/lojaonline/models/imagens.dart';
// import 'package:pjmei_white_label_ui/features/lojaonline/models/informacoes_adicionais.dart';
// import 'package:pjmei_white_label_ui/features/lojaonline/models/opcao_produto.dart';

// import '../../../../../../settings/settings.dart';

// class Produto {
//   Produto({
//     this.tipo,
//     this.nome,
//     this.descricao,
//     this.tipoDesconto,
//     this.desconto,
//     this.precoSemDesconto,
//     this.visivel,
//     this.estabelecimento,
//     this.objeto,
//     this.precoComDesconto,
//     this.valorDesconto,
//     this.destaque,
//     this.id,
//     this.apagado,
//     this.agendamentoOnline,
//     this.informacoesAdicionais,
//     this.opcoes,
//     this.total,
//     this.imagens,
//     this.cronogramas,
//     this.cronogramasUtc,
//     this.cronogramasLocal,
//     this.agendamentos,
//     this.local,
//     this.categoria,
//   });

//   factory Produto.fromMap(Map<String, dynamic> map) {
//     final List<String> local = [];

//     if (map['categoria'] == null ||
//         map['categoria'] == '' ||
//         map['categoria'] == ' ') {
//       map['categoria'] = '#12345#**#54321#';
//     }

//     if (map['servico'] != null) {
//       if (map['servico'] is Map) {
//         if (map['servico']['local'] != null) {
//           map['servico']?['local'].forEach((element) {
//             local.add(element);
//           });
//         }
//       }
//     }
//     if (map['objeto'] != null) {
//       if (map['objeto'] is Map) {
//         if (map['objeto']['local'] != null) {
//           map['objeto']?['local'].forEach((element) {
//             local.add(element);
//           });
//         }
//       }
//     }

//     return Produto(
//       tipo: map['tipo'].toString(),
//       nome: map['nome'].toString(),
//       descricao: map['descricao'].toString(),
//       tipoDesconto: map['tipo_desconto'].toString(),
//       desconto: double.tryParse(map['desconto'].toString()),
//       precoSemDesconto: double.tryParse(map['precoSemDesconto'].toString()),
//       visivel: map['visivel'] ?? false,
//       estabelecimento: map['estabelecimento'] != null
//           ? EcommerceEntity.fromMap(map['estabelecimento'])
//           : null,
//       objeto: map['objeto'] == null
//           ? map['servico'] == null
//               ? {}
//               : Map.from(map['servico'])
//           : Map.from(map['objeto']),
//       precoComDesconto: double.tryParse(map['precoComDesconto'].toString()),
//       valorDesconto: double.tryParse(map['valorDesconto'].toString()),
//       destaque: map['destaque'],
//       id: map['id'].toString(),
//       apagado: map['apagado'],
//       agendamentoOnline:
//           map['agendamento_online'] ?? map['agendamentoOnline'] ?? false,
//       informacoesAdicionais: map['informacoes_adicionais'] == null
//           ? []
//           : List<InformacoesAdicionaisEntity>.from(map['informacoes_adicionais']
//               ?.map((x) => InformacoesAdicionaisEntity.fromMap(x))),
//       opcoes: map['opcoes'] == null
//           ? []
//           : List<OpcaoProdutoEntity>.from(
//               map['opcoes']?.map((x) => OpcaoProdutoEntity.fromMap(x))),
//       imagens: map['imagem'] == null
//           ? []
//           : List<ImagensEntity>.from(
//               map['imagem']?.map((x) => ImagensEntity.fromMap(x))),
//       cronogramas: map['cronograma'] == null
//           ? []
//           : List<CronogramaEntity>.from(
//               map['cronograma']?.map((x) => CronogramaEntity.fromMap(x))),
//       cronogramasUtc: map['cronograma'] == null
//           ? []
//           : List<CronogramaEntity>.from(
//               map['cronograma']?.map((x) => CronogramaEntity.fromMap(x))),
//       agendamentos: map['agendamentos'] == null
//           ? []
//           : List<AgendamentoEntity>.from(
//               map['agendamentos']?.map((x) => AgendamentoEntity.fromMap(x))),
//       local: local,
//       categoria: map['categoria'],
//     );
//   }

//   factory Produto.fromJson(String source) =>
//       Produto.fromMap(json.decode(source));
//   String? tipo;
//   String? nome;
//   String? descricao;
//   String? tipoDesconto;
//   num? desconto;
//   num? precoSemDesconto;
//   bool? visivel;
//   EcommerceEntity? estabelecimento;
//   Map? objeto;
//   num? precoComDesconto;
//   num? valorDesconto;
//   bool? destaque;
//   String? id;
//   bool? apagado;
//   bool? agendamentoOnline;
//   List<InformacoesAdicionaisEntity>? informacoesAdicionais;
//   List<OpcaoProdutoEntity>? opcoes;
//   num? total; // Parece que não é usado
//   List<ImagensEntity>? imagens;
//   List<CronogramaEntity>? cronogramas;
//   List<CronogramaEntity>? cronogramasUtc;
//   List<CronogramaEntity>? cronogramasLocal;
//   List<AgendamentoEntity>? agendamentos;
//   List<String>? local;
//   String? categoria;

//   Produto copyWith({
//     String? tipo,
//     String? nome,
//     String? descricao,
//     String? tipoDesconto,
//     num? desconto,
//     num? precoSemDesconto,
//     bool? visivel,
//     EcommerceEntity? estabelecimento,
//     Map? servico,
//     Map? objeto,
//     num? precoComDesconto,
//     num? valorDesconto,
//     num? total,
//     bool? destaque,
//     String? id,
//     bool? apagado,
//     bool? agendamentoOnline,
//     List<InformacoesAdicionaisEntity>? informacoesAdicionais,
//     List<OpcaoProdutoEntity>? opcoes,
//     List<ImagensEntity>? imagens,
//     List<CronogramaEntity>? cronogramas,
//     List<CronogramaEntity>? cronogramasUtc,
//     List<CronogramaEntity>? cronogramasLocal,
//     List<AgendamentoEntity>? agendamentos,
//     List<String>? local,
//     String? categoria,
//   }) {
//     List<OpcaoProdutoEntity> listOpcoes = [];
//     if (opcoes == null && this.opcoes != null) {
//       listOpcoes = [];
//       this.opcoes?.forEach((element) {
//         listOpcoes.add(element.iniciar());
//       });
//     }
//     List<InformacoesAdicionaisEntity> listaInformacoesAdicionais = [];
//     if (informacoesAdicionais == null && this.informacoesAdicionais != null) {
//       listaInformacoesAdicionais = [];
//       this.informacoesAdicionais?.forEach((element) {
//         listaInformacoesAdicionais.add(element.copyWith());
//       });
//     }
//     List<ImagensEntity> listaImagens = [];
//     if (imagens == null && this.imagens != null) {
//       listaImagens = [];
//       this.imagens?.forEach((element) {
//         listaImagens.add(element.copyWith());
//       });
//     }
//     List<CronogramaEntity> listaCronogramas = [];
//     if (cronogramas == null && this.cronogramas != null) {
//       listaCronogramas = [];
//       this.cronogramas?.forEach((element) {
//         listaCronogramas.add(element.copyWith());
//       });
//     }
//     List<CronogramaEntity> listaCronogramasUtc = [];
//     if (cronogramasUtc == null && this.cronogramasUtc != null) {
//       listaCronogramasUtc = [];
//       this.cronogramasUtc?.forEach((element) {
//         listaCronogramasUtc.add(element.copyWith());
//       });
//     }
//     List<CronogramaEntity> listaCronogramasLocal = [];
//     if (cronogramasLocal == null && this.cronogramasLocal != null) {
//       listaCronogramasLocal = [];
//       this.cronogramasLocal?.forEach((element) {
//         listaCronogramasLocal.add(element.copyWith());
//       });
//     }
//     List<AgendamentoEntity> listaAgendamentos = [];
//     if (agendamentos == null && this.agendamentos != null) {
//       listaAgendamentos = [];
//       this.agendamentos?.forEach((element) {
//         listaAgendamentos.add(element.copyWith());
//       });
//     }
//     return Produto(
//       tipo: tipo ?? this.tipo,
//       nome: nome ?? this.nome,
//       descricao: descricao ?? this.descricao,
//       tipoDesconto: tipoDesconto ?? this.tipoDesconto,
//       desconto: desconto ?? this.desconto,
//       precoSemDesconto: precoSemDesconto ?? this.precoSemDesconto,
//       visivel: visivel ?? this.visivel,
//       estabelecimento:
//           estabelecimento ?? this.estabelecimento?.copyWith(), // CopyWith
//       objeto: objeto ?? this.objeto, // Map (por enquanto)
//       precoComDesconto: precoComDesconto ?? this.precoComDesconto,
//       valorDesconto: valorDesconto ?? this.valorDesconto,
//       destaque: destaque ?? this.destaque,
//       id: id ?? this.id,
//       apagado: apagado ?? this.apagado,
//       agendamentoOnline: agendamentoOnline ?? this.agendamentoOnline,
//       informacoesAdicionais:
//           informacoesAdicionais ?? listaInformacoesAdicionais, // CopyWith
//       opcoes: opcoes ?? listOpcoes, // CopyWith
//       total: total ?? this.total,
//       imagens: imagens ?? listaImagens, // CopyWith
//       cronogramas: cronogramas ?? listaCronogramas, // CopyWith
//       cronogramasUtc: cronogramasUtc ?? listaCronogramasUtc, // CopyWith
//       cronogramasLocal: cronogramasLocal ?? listaCronogramasLocal, // CopyWith
//       agendamentos: agendamentos ?? listaAgendamentos, // CopyWith
//       local: local ?? this.local,
//       categoria: categoria ?? this.categoria,
//     );
//   }

//   Produto limpar() {
//     List<OpcaoProdutoEntity> listaOpcoes = [];
//     if (this.opcoes != null) {
//       listaOpcoes = [];
//       this.opcoes?.forEach((element) {
//         element = element.limpar();
//         listaOpcoes.add(element);
//       });
//     }
//     return Produto(
//       tipo: this.tipo,
//       nome: this.nome,
//       descricao: this.descricao,
//       tipoDesconto: this.tipoDesconto,
//       desconto: this.desconto,
//       precoSemDesconto: this.precoSemDesconto,
//       visivel: this.visivel,
//       estabelecimento: this.estabelecimento,
//       objeto: this.objeto,
//       precoComDesconto: this.precoComDesconto,
//       valorDesconto: this.valorDesconto,
//       destaque: this.destaque,
//       id: this.id,
//       apagado: this.apagado,
//       agendamentoOnline: this.agendamentoOnline,
//       informacoesAdicionais: this.informacoesAdicionais,
//       opcoes: listaOpcoes,
//       total: total ?? this.total,
//       imagens: this.imagens,
//       cronogramas: this.cronogramas,
//       cronogramasUtc: this.cronogramasUtc,
//       cronogramasLocal: this.cronogramasLocal,
//       agendamentos: this.agendamentos,
//       local: this.local,
//       categoria: this.categoria,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'tipo': tipo,
//       'nome': nome,
//       'descricao': descricao,
//       'tipoDesconto': tipoDesconto,
//       'desconto': desconto,
//       'precoSemDesconto': precoSemDesconto,
//       'visivel': visivel ?? false,
//       'estabelecimento': estabelecimento?.toMap(),
//       'objeto': objeto,
//       'precoComDesconto': precoComDesconto,
//       'valorDesconto': valorDesconto,
//       'destaque': destaque ?? false,
//       'id': id,
//       'apagado': apagado ?? false,
//       'agendamentoOnline': agendamentoOnline ?? false,
//       'informacoesAdicionais':
//           informacoesAdicionais?.map((x) => x.toMap()).toList(),
//       'opcoes': opcoes?.map((x) => x.toMap()).toList(),
//       'imagens': imagens?.map((x) => x.toMap()).toList(),
//       'cronograma':
//           cronogramasUtc?.map((x) => x.toMap()).toList(), // Apenas Utc
//       'agendamentos': agendamentos?.map((x) => x.toMap()).toList(),
//       'local': local,
//       'categoria': categoria,
//       'agendamento_online': agendamentoOnline ?? false,
//     };
//   }

//   String toJson() => json.encode(toMap());

//   @override
//   int get hashCode {
//     return tipo.hashCode ^
//         nome.hashCode ^
//         descricao.hashCode ^
//         tipoDesconto.hashCode ^
//         desconto.hashCode ^
//         precoSemDesconto.hashCode ^
//         visivel.hashCode ^
//         estabelecimento.hashCode ^
//         objeto.hashCode ^
//         precoComDesconto.hashCode ^
//         valorDesconto.hashCode ^
//         destaque.hashCode ^
//         id.hashCode ^
//         apagado.hashCode ^
//         agendamentoOnline.hashCode ^
//         informacoesAdicionais.hashCode ^
//         opcoes.hashCode ^
//         total.hashCode ^
//         imagens.hashCode ^
//         cronogramasUtc.hashCode ^
//         cronogramasLocal.hashCode ^
//         agendamentos.hashCode ^
//         local.hashCode ^
//         categoria.hashCode;
//   }

//   @override
//   String toString() {
//     return 'Produto(tipo: $tipo, nome: $nome, descricao: $descricao, tipoDesconto: $tipoDesconto, desconto: $desconto, precoSemDesconto: $precoSemDesconto, visivel: $visivel, estabelecimento: $estabelecimento, objeto: $objeto, precoComDesconto: $precoComDesconto, valorDesconto: $valorDesconto, destaque: $destaque, id: $id, apagado: $apagado, agendamentoOnline: $agendamentoOnline, informacoesAdicionais: $informacoesAdicionais, opcoes: $opcoes, total: $total, imagens: $imagens, cronogramasUtc: $cronogramasUtc, cronogramasLocal: $cronogramasLocal, agendamentos: $agendamentos, local: $local, categoria: $categoria)';
//   }

//   Map<String, dynamic> calcularValorOpcoes() {
//     bool aPartirDe = false;
//     double totalMin = 0;
//     double totalMax = 0;

//     if (this.opcoes != null) {
//       this.opcoes?.forEach((element) {
//         if (element.itens != null && element.itens!.isNotEmpty) {
//           num? valorMinimo;
//           num? valorMaximo;
//           element.itens?.forEach((elementItem) {
//             if (elementItem.valor != null) {
//               if ((element.min ?? 0) > 0 &&
//                   (valorMinimo == null ||
//                       (elementItem.valor ?? 0) * (element.min ?? 0) <
//                           (valorMinimo ?? 0))) {
//                 valorMinimo = (elementItem.valor ?? 0) * (element.min ?? 0);
//               }
//               if ((element.max ?? 0) > 0 &&
//                   (valorMaximo == null ||
//                       (elementItem.valor ?? 0) * (element.max ?? 0) >
//                           (valorMaximo ?? 0))) {
//                 valorMaximo = (elementItem.valor ?? 0) * (element.max ?? 0);
//               }
//               if (elementItem.valor != null && (elementItem.valor ?? 0) > 0) {
//                 aPartirDe = true;
//               }
//             }
//           });
//           if (valorMinimo != null) totalMin += (valorMinimo ?? 0);
//           if (valorMaximo != null) totalMax += (valorMaximo ?? 0);
//         }
//       });
//     }

//     final Map<String, dynamic> retorno = {
//       'totalMin': totalMin,
//       'totalMax': totalMax,
//       'aPartirDe': aPartirDe,
//       'minMaxDiferente': totalMin != totalMax,
//     };

//     return retorno;
//   }

//   bool possuiIconesInformativos() {
//     if (this.objeto == null) {
//       this.objeto = {};
//     }
//     bool exibirIcones = false;
//     if (this.objeto!['to_na_mesa'] == true) {
//       exibirIcones = true; // ! Passar para classes
//     } else if (this.objeto!['serve_quantos'] != null &&
//         this.objeto!['serve_quantos'] > 0) {
//       exibirIcones = true;
//     } else if (this.objeto!['alergenicos'] != null &&
//         this.objeto!['alergenicos'].toString() != '') {
//       exibirIcones = true;
//     } else if (this.objeto!['para_maiores'] == true) {
//       exibirIcones = true;
//     }
//     return exibirIcones;
//   }

//   @override
//   bool operator ==(Object o) {
//     if (identical(this, o)) return true;

//     return o is Produto &&
//         o.tipo == tipo &&
//         o.nome == nome &&
//         o.descricao == descricao &&
//         o.tipoDesconto == tipoDesconto &&
//         o.desconto == desconto &&
//         o.precoSemDesconto == precoSemDesconto &&
//         o.visivel == visivel &&
//         o.estabelecimento == estabelecimento &&
//         mapEquals(o.objeto, objeto) &&
//         o.precoComDesconto == precoComDesconto &&
//         o.valorDesconto == valorDesconto &&
//         o.destaque == destaque &&
//         o.id == id &&
//         o.apagado == apagado &&
//         o.agendamentoOnline == agendamentoOnline &&
//         listEquals(o.informacoesAdicionais, informacoesAdicionais) &&
//         listEquals(o.opcoes, opcoes) &&
//         o.total == total &&
//         listEquals(o.imagens, imagens) &&
//         listEquals(o.cronogramasUtc, cronogramasUtc) &&
//         listEquals(o.cronogramasLocal, cronogramasLocal) &&
//         listEquals(o.agendamentos, agendamentos) &&
//         listEquals(o.local, local) &&
//         o.categoria == categoria;
//   }
// }
