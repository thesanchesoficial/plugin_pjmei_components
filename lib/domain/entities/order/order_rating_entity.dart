import 'dart:convert';
import 'package:plugin_pjmei_components/domain/entities/user/user_entity.dart';

class OrderRatingEntity {
  const OrderRatingEntity({
    this.id,
    this.nota,
    this.notaVenver,
    this.comentario,
    this.resposta,
    this.usuario,
  });

  factory OrderRatingEntity.fromMap(Map<String, dynamic> map) {
    return OrderRatingEntity(
      id: map['id'].toString(),
      nota: int.tryParse(map['nota'].toString()),
      notaVenver: int.tryParse(map['nota_venver'].toString()),
      comentario: map['comentario'].toString(),
      resposta: map['resposta'].toString(),
      usuario: UserEntity.fromMap(map['usuario']),
    );
  }

  factory OrderRatingEntity.fromJson(String source) => OrderRatingEntity.fromMap(json.decode(source));
  final String? id;
  final int? nota;
  final int? notaVenver;
  final String? comentario;
  final String? resposta;
  final UserEntity? usuario;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nota': nota,
      'notaVenver': notaVenver,
      'comentario': comentario,
      'resposta': resposta,
      'usuario': usuario?.toMap(),
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'AvaliacaoEntity(id: $id, nota: $nota, notaVenver: $notaVenver, comentario: $comentario, resposta: $resposta, usuario: $usuario)';
  }

  OrderRatingEntity copyWith({
    String? id,
    int? nota,
    int? notaVenver,
    String? comentario,
    String? resposta,
    UserEntity? usuario,
  }) {
    return OrderRatingEntity(
      id: id ?? this.id,
      nota: nota ?? this.nota,
      notaVenver: notaVenver ?? this.notaVenver,
      comentario: comentario ?? this.comentario,
      resposta: resposta ?? this.resposta,
      usuario: usuario ?? this.usuario,
    );
  }

}
