import 'dart:convert';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class EstablishmentEntity {
  EstablishmentEntity({
    this.id,
    this.email,
    this.url,
    this.telefone,
    this.tipo,
    this.nome,
    this.paymentType,
    this.paymentId,
    this.logo,
    this.capa,
    this.documento,
    this.descricao,
    this.visibilidade,
    this.status,
    this.formasDePagamento,
    this.formasDeEntrega,
    this.pedidoMinimo,
    this.taxaDeEntrega,
    this.entregaGratis,
    this.tempoEntrega,
    this.tempoRetirada,
    this.aceitaCupom,
    this.bloqueado,
    this.usuarioId,
    this.distancia,
    this.enderecos,
    this.subcategorias,
    this.cronogramasUtc,
    this.cronogramasLocal,
    this.createdAt,
    this.mediaAvaliacoes,
    this.politicaTrocasDevolucoes,
    this.agendamentoOnline,
    this.statusPagamento,
    this.local,
    this.frete,
    this.maxRaio,
    this.categoriaProduto,
    this.categoriasProdutoString,
    this.destaques,
    this.checked,
    this.tipoJurosParcelamento,
    this.aceitaParcelamento,
  });

  factory EstablishmentEntity.fromMap(Map<String, dynamic> map) {
    List<String> local = []; // ! Por enquanto, já que tem profissional cadastrado com local do tipo String

    if (map['local'] != null) {
      try {
        local = List<String>.from(map['local']);
      } catch (e) {
        final List<String> temp = OwFormat.removerCaracteres(
          map['local'].toString(),
          '"{},',
        ).split(',');
        if (temp.isNotEmpty) local.add(temp[0]);
        if (temp.length > 1) local.add(temp[1]);
      }
    }

    final List<TimelineEntity> listaCronogramasLocal = gerarCronograma(mapCronogramaUtc: map['cronograma'] ?? map['estabelecimento_categoria']);
    final List<EstablishmentSubcategoryEntity> listaSubcategorias = [];

    try {
      if (map['estabelecimento_categoria'] is List) {
        map['estabelecimento_categoria'].forEach((element) {
          EstablishmentSubcategoryEntity fs;
          if (element['sub_categoria'] != null) {
            fs = EstablishmentSubcategoryEntity(
              id: element['sub_categoria']['id'],
              nome: element['sub_categoria']['nome'],
            );
          } else {
            fs = EstablishmentSubcategoryEntity(
              id: element['id'],
              nome: element['nome'],
            );
          }
          listaSubcategorias.add(fs);
        });
      }
    } catch (e) {}

    try {
      if (map['estabelecimento_categoria'] == null ||
          map['estabelecimento_categoria'].isEmpty) {
        map['subcategorias'].forEach((element) {
          final EstablishmentSubcategoryEntity fs = EstablishmentSubcategoryEntity(
            id: element['sub_categoria']['id'].toString(),
            nome: element['sub_categoria']['nome'].toString(),
          );
          listaSubcategorias.add(fs);
        });
      } else {
        map['estabelecimento_categoria'].forEach((element) {
          final EstablishmentSubcategoryEntity fs = EstablishmentSubcategoryEntity(
            id: element['sub_categoria']['id'].toString(),
            nome: element['sub_categoria']['nome'].toString(),
          );
          listaSubcategorias.add(fs);
        });
      }
    } catch (e) {}

    return EstablishmentEntity(
      id: map['id'].toString(),
      email: map['email'].toString(),
      url: map['url'].toString(),
      telefone: map['telefone'].toString(),
      tipo: map['tipo'].toString(),
      nome: map['nome'].toString(),
      paymentType: map['payment_type'],
      paymentId: map['payment_id'].toString(),
      logo: map['logo'].toString(),
      capa: map['capa'].toString(),
      documento: map['documento'].toString(),
      descricao: map['descricao'].toString(),
      visibilidade: map['visibilidade'] ?? false,
      status: map['status'] ?? false,
      formasDePagamento: map['formas_de_pagamento'] == null
          ? []
          : List.from(map['formas_de_pagamento']),
      formasDeEntrega: map['formas_de_entrega'] == null
          ? []
          : List.from(map['formas_de_entrega']),
      pedidoMinimo: map['pedido_minimo'] == null
          ? 0
          : double.tryParse(map['pedido_minimo'].toString()) ?? 0,
      taxaDeEntrega: double.tryParse(map['taxa_de_entrega'].toString()) ?? 0,
      entregaGratis: double.tryParse(map['entrega_gratis'].toString()) ?? 0,
      tempoEntrega: int.tryParse(map['tempo_entrega'].toString()) ?? 0,
      tempoRetirada: int.tryParse(map['tempo_retirada'].toString()) ?? 0,
      aceitaCupom: map['aceita_cupom'] ?? true,
      bloqueado: map['bloqueado'] ?? false,
      enderecos: map['endereco'] == null
          ? map['enderecos'] == null
              ? []
              : List<AddressEntity>.from(
                  map['enderecos']?.map((x) => AddressEntity.fromMap(x)))
          : List<AddressEntity>.from(
              map['endereco']?.map((x) => AddressEntity.fromMap(x))),
      subcategorias: listaSubcategorias,
      createdAt:
          DateTime.tryParse(map['created_at'].toString())?.toLocal().toString(),
      mediaAvaliacoes: map['media_avaliacoes'] == null
          ? -1
          : double.tryParse(map['media_avaliacoes'].toString()),
      politicaTrocasDevolucoes: map['politica_trocas_devolucoes'].toString(),
      agendamentoOnline: map['agendamento_online'] ?? false,
      statusPagamento: map['status_pagamento'].toString(),
      cronogramasUtc: map['cronograma'] == null
          ? []
          : List<TimelineEntity>.from(
              map['cronograma']?.map((x) => TimelineEntity.fromMap(x))),
      cronogramasLocal: listaCronogramasLocal,
      local: local,
      frete: map['frete'] == null
          ? []
          : List<ShippingEntity>.from(
              map['frete']?.map((x) => ShippingEntity.fromMap(x))),
      maxRaio: int.tryParse(map['max_raio'].toString()),
      categoriaProduto: [],
      categoriasProdutoString: [],
      destaques: [],
      checked: map['checked'] ?? false,
      tipoJurosParcelamento: map['tipo_juros_parcelamento'] == null
          ? []
          : List.from(map['tipo_juros_parcelamento']),
      aceitaParcelamento: map['aceita_parcelamento'] ?? true,
    );
  }

  factory EstablishmentEntity.fromJson(String source) => EstablishmentEntity.fromMap(json.decode(source));
  String? id;
  String? email;
  String? url;
  String? telefone;
  String? tipo;
  String? nome;
  String? paymentType;
  String? paymentId;
  String? logo;
  String? capa;
  String? documento;
  String? descricao;
  bool? visibilidade;
  bool? status;
  List? formasDePagamento;
  List? formasDeEntrega;
  num? pedidoMinimo;
  num? taxaDeEntrega;
  num? entregaGratis;
  int? tempoEntrega;
  int? tempoRetirada;
  bool? aceitaCupom;
  bool? bloqueado;
  String? usuarioId;
  num? distancia;
  List<AddressEntity>? enderecos;
  // List<String> estabelecimentoCategoria;
  List<EstablishmentSubcategoryEntity>? subcategorias;
  List<TimelineEntity>? cronogramasUtc; // adicionado
  List<TimelineEntity>? cronogramasLocal; // adicionado
  String? createdAt; // adicionado
  num? mediaAvaliacoes; // adicionado
  String? politicaTrocasDevolucoes; // adicionado
  bool? agendamentoOnline; // adicionado
  String? statusPagamento; // adicionado
  List<String>? local;
  List<ShippingEntity>? frete; // adicionado
  int? maxRaio;
  List<ProductCategoryEntity>? categoriaProduto;
  List<String>? categoriasProdutoString;
  List<ProductEntity>? destaques;
  bool? checked;
  List<String>? tipoJurosParcelamento;
  bool? aceitaParcelamento;
  // String notificacoesId;
  // bool apagado;
  // List local;

  EstablishmentEntity copyWith({
    String? id,
    String? email,
    String? url,
    String? telefone,
    String? tipo,
    String? nome,
    String? paymentType,
    String? paymentId,
    String? logo,
    String? capa,
    String? documento,
    String? descricao,
    bool? visibilidade,
    bool? status,
    List? formasDePagamento,
    List? formasDeEntrega,
    num? pedidoMinimo,
    num? taxaDeEntrega,
    num? entregaGratis,
    int? tempoEntrega,
    int? tempoRetirada,
    bool? aceitaCupom,
    bool? bloqueado,
    bool? apagado,
    String? usuarioId,
    num? distancia,
    List<AddressEntity>? enderecos,
    List<EstablishmentSubcategoryEntity>? subcategorias,
    String? createdAt,
    List<TimelineEntity>? cronogramasUtc,
    List<TimelineEntity>? cronogramasLocal,
    List<String>? local,
    List<ShippingEntity>? frete,
    int? maxRaio,
    List<ProductCategoryEntity>? categoriaProduto,
    bool? agendamentoOnline,
    List<ProductEntity>? destaques,
    bool? checked,
    List<String>? categoriasProdutoString,
    List<String>? tipoJurosParcelamento,
    bool? aceitaParcelamento,
  }) {
    List<ProductEntity> listaDestaques = [];
    if (destaques == null) {
      listaDestaques = [];
      this.destaques?.forEach((element) {
        listaDestaques.add(element.copyWith());
      });
    }
    List<AddressEntity> listaEnderecos = [];
    if (enderecos == null) {
      listaEnderecos = [];
      this.enderecos?.forEach((element) {
        listaEnderecos.add(element.copyWith());
      });
    }
    List<TimelineEntity> listaCronogramasUtc = [];
    if (cronogramasUtc == null) {
      listaCronogramasUtc = [];
      this.cronogramasUtc?.forEach((element) {
        listaCronogramasUtc.add(element.copyWith());
      });
    }
    List<TimelineEntity> listaCronogramasLocal = [];
    if (cronogramasLocal == null) {
      listaCronogramasLocal = [];
      this.cronogramasLocal?.forEach((element) {
        listaCronogramasLocal.add(element.copyWith());
      });
    }
    List<ShippingEntity> listaFrete = [];
    if (frete == null) {
      listaFrete = [];
      this.frete?.forEach((element) {
        listaFrete.add(element.copyWith());
      });
    }
    List<EstablishmentSubcategoryEntity> listaSubcategorias = [];
    if (subcategorias == null) {
      listaSubcategorias = [];
      this.subcategorias?.forEach((element) {
        listaSubcategorias.add(element.copyWith());
      });
    }
    List<ProductCategoryEntity> listaCategoriaProduto = [];
    if (categoriaProduto == null) {
      listaCategoriaProduto = [];
      this.categoriaProduto?.forEach((element) {
        listaCategoriaProduto.add(element.copyWith());
      });
    }
    return EstablishmentEntity(
        id: id ?? this.id,
        email: email ?? this.email,
        url: url ?? this.url,
        telefone: telefone ?? this.telefone,
        tipo: tipo ?? this.tipo,
        nome: nome ?? this.nome,
        paymentType: paymentType ?? this.paymentType,
        paymentId: paymentId ?? this.paymentId,
        logo: logo ?? this.logo,
        capa: capa ?? this.capa,
        documento: documento ?? this.documento,
        descricao: descricao ?? this.descricao,
        visibilidade: visibilidade ?? this.visibilidade,
        status: status ?? this.status,
        formasDePagamento: formasDePagamento ?? this.formasDePagamento,
        formasDeEntrega: formasDeEntrega ?? this.formasDeEntrega,
        pedidoMinimo: pedidoMinimo ?? this.pedidoMinimo,
        taxaDeEntrega: taxaDeEntrega ?? this.taxaDeEntrega,
        entregaGratis: entregaGratis ?? this.entregaGratis,
        tempoEntrega: tempoEntrega ?? this.tempoEntrega,
        tempoRetirada: tempoRetirada ?? this.tempoRetirada,
        aceitaCupom: aceitaCupom ?? this.aceitaCupom,
        bloqueado: bloqueado ?? this.bloqueado,
        usuarioId: usuarioId ?? this.usuarioId,
        distancia: distancia ?? this.distancia,
        enderecos: enderecos ?? listaEnderecos, // CopyWith
        subcategorias: subcategorias ?? listaSubcategorias, // CopyWith
        createdAt: createdAt ?? this.createdAt,
        cronogramasUtc: cronogramasUtc ?? listaCronogramasUtc, // CopyWith
        cronogramasLocal: cronogramasLocal ?? listaCronogramasLocal, // CopyWith
        local: local ?? this.local,
        frete: frete ?? listaFrete,
        maxRaio: maxRaio ?? this.maxRaio,
        categoriaProduto: categoriaProduto ?? this.categoriaProduto,
        agendamentoOnline: agendamentoOnline ?? this.agendamentoOnline,
        destaques: destaques ?? listaDestaques, // CopyWith
        checked: checked ?? this.checked,
        categoriasProdutoString:
            categoriasProdutoString ?? this.categoriasProdutoString,
        tipoJurosParcelamento:
            tipoJurosParcelamento ?? this.tipoJurosParcelamento,
        aceitaParcelamento: aceitaParcelamento ?? this.aceitaParcelamento);
  }

  @override
  String toString() {
    return 'Estabelecimento(id: $id, email: $email, url: $url, telefone: $telefone, tipo: $tipo, nome: $nome, paymentType: $paymentType, paymentId: $paymentId, logo: $logo, capa: $capa, documento: $documento, descricao: $descricao, visibilidade: $visibilidade, status: $status, formasDePagamento: $formasDePagamento, formasDeEntrega: $formasDeEntrega, pedidoMinimo: $pedidoMinimo, taxaDeEntrega: $taxaDeEntrega, entregaGratis: $entregaGratis, tempoEntrega: $tempoEntrega, tempoRetirada: $tempoRetirada, aceitaCupom: $aceitaCupom, bloqueado: $bloqueado, usuarioId: $usuarioId, distancia: $distancia, enderecos: $enderecos, subcategorias: $subcategorias, cronogramasUtc: $cronogramasUtc, cronogramasLocal: $cronogramasLocal, createdAt: $createdAt, mediaAvaliacoes: $mediaAvaliacoes, politicaTrocasDevolucoes: $politicaTrocasDevolucoes, agendamentoOnline: $agendamentoOnline, statusPagamento: $statusPagamento, local: $local, frete: $frete, maxRaio: $maxRaio, categoriaProduto: $categoriaProduto, destaques: $destaques, checked: $checked, categoriasProdutoString: $categoriasProdutoString)';
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'url': url,
      'telefone': telefone,
      'tipo': tipo,
      'nome': nome,
      'paymentType': paymentType,
      'payment_type': paymentType,
      'paymentId': paymentId,
      'logo': logo,
      'capa': capa,
      'documento': documento,
      'descricao': descricao,
      'visibilidade': visibilidade ?? false,
      'status': status,
      'formasDePagamento': formasDePagamento,
      'formas_de_pagamento': formasDePagamento,
      'formasDeEntrega': formasDeEntrega,
      'formas_de_entrega': formasDeEntrega,
      'pedidoMinimo': pedidoMinimo ?? 0,
      'pedido_minimo': pedidoMinimo ?? 0,
      'taxaDeEntrega': taxaDeEntrega,
      'taxa_de_entrega': taxaDeEntrega,
      'entregaGratis': entregaGratis,
      'entrega_gratis': entregaGratis,
      'tempoEntrega': tempoEntrega,
      'tempoRetirada': tempoRetirada,
      'tempo_entrega': tempoEntrega,
      'tempo_retirada': tempoRetirada,
      'aceitaCupom': aceitaCupom ?? true,
      'bloqueado': bloqueado ?? false,
      'aceita_cupom': aceitaCupom ?? true,
      'usuarioId': usuarioId,
      'distancia': distancia,
      'enderecos': enderecos?.map((x) => x.toMap()).toList(),
      'endereco': enderecos?.map((x) => x.toMap()).toList(),
      'estabelecimentoCategoria': subcategorias?.map((x) => x.toMap()).toList(),
      'estabelecimento_categoria':
          subcategorias?.map((x) => x.toMap()).toList(),
      'subcategorias': subcategorias?.map((x) => x.toMap()).toList(),
      'cronograma': cronogramasUtc?.map((x) => x.toMap()).toList(),
      'createdAt': createdAt ?? DateTime.now(),
      'created_at': createdAt ?? DateTime.now(),
      'mediaAvaliacoes': mediaAvaliacoes,
      'media_avaliacoes': mediaAvaliacoes,
      'politicaTrocasDevolucoes': politicaTrocasDevolucoes,
      'politica_trocas_devolucoes': politicaTrocasDevolucoes,
      'agendamentoOnline': agendamentoOnline ?? false,
      'agendamento_online': agendamentoOnline ?? false,
      'statusPagamento': statusPagamento,
      'status_pagamento': statusPagamento,
      'frete': frete?.map((x) => x.toMap()).toList(),
      'local': local,
      'max_raio': maxRaio,
      // 'categoriaProduto': categoriaProduto,
      // 'categoriasProdutoString': categoriasProdutoString,
      // 'destaques': destaques,
      // 'checked':  checked,
      'tipoJurosParcelamento': tipoJurosParcelamento,
      'tipo_juros_parcelamento': tipoJurosParcelamento,
      'aceitaParcelamento': aceitaParcelamento,
      'aceita_parcelamento': aceitaParcelamento
    };
  }

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMapApi() {
    final List<Map<String, dynamic>> listaEnderecos = [];
    if (enderecos != null) {
      enderecos?.forEach((element) {
        listaEnderecos.add(element.toMapSemId());
      });
    }
    final List<Map<String, dynamic>> listaCronogramasUtcMap = [];
    if (cronogramasUtc != null) {
      cronogramasUtc?.forEach((element) {
        listaCronogramasUtcMap.add(element.toMapApi());
      });
    }
    final List<Map<String, dynamic>> listaFreteMap = [];
    if (frete != null) {
      frete?.forEach((element) {
        listaFreteMap.add(element.toMap());
      });
    }
    final List<String> listaSubcategorias = [];
    if (subcategorias != null) {
      subcategorias?.forEach((element) {
        listaSubcategorias.add(element.id ?? '');
      });
    }

    return {
      'telefone': telefone,
      'nome': OwFormat.name(nome ?? ''),
      'url': OwFormat.url(url ?? ''),
      'logo': logo,
      'capa': capa,
      'descricao': OwFormat.description(descricao ?? ''),
      'visibilidade': visibilidade,
      'formas_de_pagamento': formasDePagamento,
      'formas_de_entrega': formasDeEntrega,
      'pedido_minimo': pedidoMinimo,
      'taxa_de_entrega': taxaDeEntrega,
      'entrega_gratis': entregaGratis,
      'tempo_entrega': tempoEntrega,
      'tempo_retirada': tempoRetirada,
      'aceita_cupom': aceitaCupom ?? true,
      'bloqueado': bloqueado ?? false,
      'endereco': listaEnderecos,
      'estabelecimento_categoria': listaSubcategorias,
      'cronograma': listaCronogramasUtcMap,
      'politica_trocas_devolucoes': politicaTrocasDevolucoes,
      'agendamento_online': agendamentoOnline ?? false,
      'frete': listaFreteMap,
      'local': local,
      'aceita_parcelamento': aceitaParcelamento ?? true,
      'tipo_juros_parcelamento': tipoJurosParcelamento
    };
  }

  static List<TimelineEntity> gerarCronograma(
      // ! Passar pro cronograma / Colocar pra receber apenas uma lista de dynaic (identificar se é Map ou Cronograma e converte) e um bool pra qual quer converter
      {List<dynamic>? mapCronogramaUtc,
      List<TimelineEntity>? listaCronogramaUtc,
      List<TimelineEntity>? listaCronogramaLocal,
      bool deUtcParaLocal = true}) {
    List<TimelineEntity> cronogramas = [];
    if (mapCronogramaUtc != null && mapCronogramaUtc.isNotEmpty) {
      try {
        cronogramas = List<TimelineEntity>.from(
          mapCronogramaUtc.map((x) => TimelineEntity.fromMap(x)),
        );
      } catch (e) {
        //
      }
    } else if (listaCronogramaUtc != null && listaCronogramaUtc.isNotEmpty) {
      try {
        cronogramas = listaCronogramaUtc;
      } catch (e) {
        //
      }
    } else if (listaCronogramaLocal != null &&
        listaCronogramaLocal.isNotEmpty) {
      cronogramas = listaCronogramaLocal;
    } else {
      return cronogramas;
    }

    final bool utc = deUtcParaLocal;

    final List<String> diasDaSemana = [
      'Domingo',
      'Segunda',
      'Terça',
      'Quarta',
      'Quinta',
      'Sexta',
      'Sábado',
    ];

    DateTime inicioDomingo;
    if (!utc) {
      inicioDomingo = DateTime.utc(2021, 1, 3);
    } else {
      inicioDomingo = DateTime(2021, 1, 3);
    }

    final List<Map<String, dynamic>> listaCronograma = [];
    for (int i = 0; i < 7; i++) {
      final Map<String, dynamic> temp = {
        'dia_semana': inicioDomingo.add(Duration(days: i)),
        'horarios': [],
      };
      listaCronograma.add(temp);
    }

    // Gerar cronogramas utc/local
    final List<Map<String, dynamic>> listaHorarios = [];
    for (var element in cronogramas) {
      final String dia = element.diaSemana.toString().toLowerCase();
      DateTime dataDia = inicioDomingo;
      int i = 0;
      if (dia.contains('dom')) {
        i = 0;
      } else if (dia.contains('seg')) {
        i = 1;
      } else if (dia.contains('ter')) {
        i = 2;
      } else if (dia.contains('qua')) {
        i = 3;
      } else if (dia.contains('qui')) {
        i = 4;
      } else if (dia.contains('sex')) {
        i = 5;
      } else if (dia.contains('sab') || dia.contains('sáb')) {
        i = 6;
      }
      dataDia = dataDia.add(Duration(days: i));

      final List<String> dataInicio = element.horarioInicio.toString().split(':');
      final List<String> dataTermino = element.horarioTermino.toString().split(':');

      DateTime cronogramaInicio;
      DateTime cronogramaTermino;
      if (utc) {
        cronogramaInicio = DateTime.utc(
          dataDia.year,
          dataDia.month,
          dataDia.day,
          int.tryParse(dataInicio[0]) ?? 0,
          int.tryParse(dataInicio[1]) ?? 0,
          int.tryParse(dataInicio[2]) ?? 0,
        );
        cronogramaTermino = DateTime.utc(
          dataDia.year,
          dataDia.month,
          dataDia.day,
          int.tryParse(dataTermino[0]) ?? 0,
          int.tryParse(dataTermino[1]) ?? 0,
          int.tryParse(dataTermino[2]) ?? 0,
        );
      } else {
        cronogramaInicio = DateTime(
          dataDia.year,
          dataDia.month,
          dataDia.day,
          int.tryParse(dataInicio[0]) ?? 0,
          int.tryParse(dataInicio[1]) ?? 0,
          int.tryParse(dataInicio[2]) ?? 0,
        );
        cronogramaTermino = DateTime(
          dataDia.year,
          dataDia.month,
          dataDia.day,
          int.tryParse(dataTermino[0]) ?? 0,
          int.tryParse(dataTermino[1]) ?? 0,
          int.tryParse(dataTermino[2]) ?? 0,
        );
      }

      final Map<String, dynamic> tempMap = utc
          ? {
              'inicio': cronogramaInicio.toUtc(),
              'termino': cronogramaTermino.toUtc(),
            }
          : {
              'inicio': cronogramaInicio.toLocal(),
              'termino': cronogramaTermino.toLocal(),
            };

      if (cronogramaInicio.isBefore(cronogramaTermino)) {
        listaHorarios.add(tempMap);
      }
    }
    cronogramas = [];

    // Inverter: se for utc, passar para local, se for local, passar para utc (separando os horários em seus dias corretos)
    for (int i = 0; i < listaHorarios.length; i++) {
      final Map<String, dynamic> novoMap = utc
          ? {
              'inicio': listaHorarios[i]['inicio'].toLocal(),
              'termino': listaHorarios[i]['termino'].toLocal(),
            }
          : {
              'inicio': listaHorarios[i]['inicio'].toUtc(),
              'termino': listaHorarios[i]['termino'].toUtc(),
            };

      Map<String, dynamic>? proxMap;

      // Verificar se inicia e termina em dias diferentes (separar cronogramas)
      if (novoMap['inicio'].day != novoMap['termino'].day) {
        if (utc) {
          proxMap = {
            'inicio': DateTime(
              novoMap['termino'].year,
              novoMap['termino'].month,
              novoMap['termino'].day,
            ).toLocal(),
            'termino': novoMap['termino'].toLocal(),
          };
          novoMap['termino'] = DateTime(novoMap['inicio'].year,
                  novoMap['inicio'].month, novoMap['inicio'].day, 23, 59, 59)
              .toLocal();
        } else {
          proxMap = {
            'inicio': DateTime.utc(
              novoMap['termino'].year,
              novoMap['termino'].month,
              novoMap['termino'].day,
            ).toUtc(),
            'termino': novoMap['termino'].toUtc(),
          };
          novoMap['termino'] = DateTime.utc(novoMap['inicio'].year,
                  novoMap['inicio'].month, novoMap['inicio'].day, 23, 59, 59)
              .toUtc();
        }
      }

      if (!(novoMap['termino'].hour == 23 && novoMap['termino'].minute == 59) &&
          novoMap['termino'].second == 59) {
        novoMap['termino'] = novoMap['termino'].add(const Duration(seconds: 1));
      }
      listaHorarios[i] = novoMap;

      if (proxMap != null && proxMap['inicio'].isBefore(proxMap['termino'])) {
        if (!(proxMap['termino'].hour == 23 &&
                proxMap['termino'].minute == 59) &&
            proxMap['termino'].second == 59) {
          proxMap['termino'] =
              proxMap['termino'].add(const Duration(seconds: 1));
        }
        listaHorarios.insert(i + 1, proxMap);
        i++;
      }
    }

    // Verificar se o dia é antes do 03/01 (e passar pro 09/01) e se o dia é depois do 09/01 (e passar pro 03/01)
    for (int i = 0; i < listaHorarios.length; i++) {
      if (listaHorarios[i]['inicio'].isBefore(inicioDomingo)) {
        listaHorarios[i]['inicio'] =
            listaHorarios[i]['inicio'].add(const Duration(days: 7));
        listaHorarios[i]['termino'] =
            listaHorarios[i]['termino'].add(const Duration(days: 7));
      } else if (listaHorarios[i]['inicio'].isAfter(inicioDomingo
          .add(const Duration(days: 7))
          .subtract(const Duration(milliseconds: 1)))) {
        listaHorarios[i]['inicio'] =
            listaHorarios[i]['inicio'].subtract(const Duration(days: 7));
        listaHorarios[i]['termino'] =
            listaHorarios[i]['termino'].subtract(const Duration(days: 7));
      }
    }

    // Ordenar horários
    listaHorarios.sort((a, b) {
      final DateTime? aInicio = DateTime.tryParse(a['inicio'].toString());
      final DateTime? bInicio = DateTime.tryParse(b['inicio'].toString());
      if (aInicio != null && bInicio != null) {
        return aInicio.compareTo(bInicio);
      } else {
        return 0;
      }
    });

    // Unir cronogramas com intervalo de 1 minuto ou 1 segundo entre si
    for (int i = 0; i < listaHorarios.length - 1; i++) {
      if (listaHorarios[i]['termino'].day ==
          listaHorarios[i + 1]['inicio'].day) {
        if (listaHorarios[i]['termino'] == listaHorarios[i + 1]['inicio'] ||
            listaHorarios[i]['termino'].add(const Duration(seconds: 1)) ==
                listaHorarios[i + 1]['inicio'] ||
            listaHorarios[i]['termino'].add(const Duration(minutes: 1)) ==
                listaHorarios[i + 1]['inicio']) {
          listaHorarios[i]['termino'] = listaHorarios[i + 1]['termino'];
          listaHorarios.remove(listaHorarios[i + 1]);
        }
      }
    }

    // Passar para lista de cronogramas
    for (var element in listaHorarios) {
      final int diaIndex = element['inicio'].weekday % 7;
      final String horaInicio =
          element['inicio'].toString().split(' ')[1].split('.')[0];
      final String horaTermino =
          element['termino'].toString().split(' ')[1].split('.')[0];
      final TimelineEntity cronogramaTemp = TimelineEntity(
        diaSemana: diasDaSemana[diaIndex],
        horarioInicio: horaInicio,
        horarioTermino: horaTermino,
      );
      cronogramas.add(cronogramaTemp);
    }

    return cronogramas;
  }

  bool aberto() {
    if (cronogramasLocal != null && cronogramasLocal!.isNotEmpty) {
      final DateTime agora = DateTime.now();
      final List<String> diasDaSemana = [
        'dom',
        'seg',
        'ter',
        'qua',
        'qui',
        'sex',
        'sáb',
      ];
      final String hoje = diasDaSemana[agora.weekday % 7];

      for (TimelineEntity element in cronogramasLocal!) {
        final String diaCronograma = element.diaSemana.toString().toLowerCase();
        if (diaCronograma.contains(hoje)) {
          final List<String> listaHorarioInicio =
              element.horarioInicio.toString().split(':');
          final List<String> listaHorarioTermino =
              element.horarioTermino.toString().split(':');
          final DateTime horarioAbertura = DateTime(
            agora.year,
            agora.month,
            agora.day,
            int.tryParse(listaHorarioInicio[0].toString()) ?? 0,
            int.tryParse(listaHorarioInicio[1].toString()) ?? 0,
            int.tryParse(listaHorarioInicio[2].toString()) ?? 0,
          );
          final DateTime horarioFechamento = DateTime(
            agora.year,
            agora.month,
            agora.day,
            int.tryParse(listaHorarioTermino[0].toString()) ?? 0,
            int.tryParse(listaHorarioTermino[1].toString()) ?? 0,
            int.tryParse(listaHorarioTermino[2].toString()) ?? 0,
          );
          if (agora.isBefore(horarioFechamento) &&
              agora.isAfter(horarioAbertura)) return true;
        }
      }
    }
    return false;
  }

  String proximaAbertura() {
    final DateTime agora = DateTime.now();
    DateTime retorno = DateTime.now();
    String? diaSemanaCronogramaRetorno;
    if (cronogramasLocal != null && cronogramasLocal!.isNotEmpty) {
      final List<String> diasDaSemana = [
        'dom',
        'seg',
        'ter',
        'qua',
        'qui',
        'sex',
        'sab'
      ];
      int dia = agora.weekday % 7;
      for (int i = 0; i < 7; i++) {
        for (TimelineEntity element in cronogramasLocal!) {
          final String diaCronograma =
              element.diaSemana.toString().toLowerCase();
          if (diaCronograma.contains(diasDaSemana[dia])) {
            int diaIndex = 0;
            if (dia > (agora.weekday % 7)) {
              diaIndex = dia - (agora.weekday % 7);
            } else if (dia < (agora.weekday % 7)) {
              diaIndex = dia - (agora.weekday % 7) + 7;
            }
            final List<String> listaHorarioInicio =
                element.horarioInicio.toString().split(':');
            final List<String> listaHorarioTermino =
                element.horarioTermino.toString().split(':');
            final DateTime horarioAbertura = DateTime(
              agora.year,
              agora.month,
              agora.day + diaIndex,
              int.tryParse(listaHorarioInicio[0].toString()) ?? 0,
              int.tryParse(listaHorarioInicio[1].toString()) ?? 0,
              int.tryParse(listaHorarioInicio[2].toString()) ?? 0,
            );
            final DateTime horarioFechamento = DateTime(
              agora.year,
              agora.month,
              agora.day + diaIndex,
              int.tryParse(listaHorarioTermino[0].toString()) ?? 0,
              int.tryParse(listaHorarioTermino[1].toString()) ?? 0,
              int.tryParse(listaHorarioTermino[2].toString()) ?? 0,
            );
            if (agora.isBefore(horarioFechamento) &&
                agora.isAfter(horarioAbertura)) {
              return 'Estabelecimento aberto';
            } else if (horarioAbertura.isAfter(agora) &&
                (horarioAbertura.isBefore(retorno))) {
              retorno = horarioAbertura;
              diaSemanaCronogramaRetorno = diaCronograma;
            }
          }
        }
        dia = (dia + 1) % 7;
      }
    }

    // return retorno;

    final DateTime hoje = DateTime(agora.year, agora.month, agora.day);
    final DateTime diaRetorno =
        DateTime(retorno.year, retorno.month, retorno.day);
    final String retornoHora = '${retorno.hour}';
    final String retornoMinuto =
        (int.tryParse(retorno.minute.toString()) ?? 0) < 10
            ? '0${retorno.minute}'
            : '${retorno.minute}';

    if (hoje == diaRetorno) {
      return 'Abre às ${retornoHora}h$retornoMinuto';
    } else if (hoje.add(const Duration(days: 1)) == diaRetorno) {
      return 'Abre amanhã às ${retornoHora}h$retornoMinuto';
    } else {
      return 'Abre $diaSemanaCronogramaRetorno às ${retornoHora}h$retornoMinuto';
    }
  }

  String taxaDeEntegaDinamica({AddressEntity? endereco}) {
    return 'Grátis';
    // String taxa = "Entrega Grátis";
    // num distancia = 1000;
    // if(endereco == null || endereco.latitude == null) {
    //   if(this.distancia == null) {
    //     distancia = Geolocator.distanceBetween(
    //       num.tryParse(appStore.address.latitude),
    //       num.tryParse(appStore.address.longitude),
    //       num.tryParse(this.enderecos[0].latitude),
    //       num.tryParse(this.enderecos[0].longitude)
    //     );
    //     this.distancia = (distancia / 1000);
    //   }
    // } else {
    //   distancia = Geolocator.distanceBetween(
    //     num.tryParse(endereco.latitude),
    //     num.tryParse(endereco.longitude),
    //     num.tryParse(this.enderecos[0].latitude),
    //     num.tryParse(this.enderecos[0].longitude)
    //   );
    //   this.distancia = (distancia / 1000);
    // }

    // this.frete.sort((a,b) => a.raio.compareTo(b.raio));

    // if (this.frete.isNotEmpty) {
    //   for (int i = 0; i < this.frete.length; i++) {
    //     if (this.frete[i].raio >= this.distancia) {
    //       this.taxaDeEntrega = this.frete[i].valor;
    //       taxa = paraReal(this.frete[i].valor);
    //       break;
    //     }
    //   }
    // } else {
    //   this.taxaDeEntrega = 0;
    //   taxa = "Entrega Grátis";
    // }
    // return taxa;
  }
}
