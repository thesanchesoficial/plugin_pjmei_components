import 'dart:convert';

class AddressEntity {
  AddressEntity({
    this.apelido,
    this.cep,
    this.numero,
    this.rua,
    this.bairro,
    this.cidade,
    this.estado,
    this.complemento,
    this.principal = false,
    this.latitude,
    this.longitude,
    this.id,
  });

  factory AddressEntity.fromMap(Map<String, dynamic> map) {
    return AddressEntity(
      apelido: map['apelido'].toString(),
      cep: map['cep'].toString(),
      numero: map['numero'].toString(),
      rua: map['rua'] == null ? map['logradouro'].toString() : map['rua'].toString(),
      bairro: map['bairro'].toString(),
      cidade: map['cidade'].toString(),
      estado: map['estado'].toString(),
      complemento: map['complemento'].toString(),
      principal: map['principal'] ?? false,
      latitude: map['latitude'].toString(),
      longitude: map['longitude'].toString(),
      id: map['id'].toString(),
    );
  }

  factory AddressEntity.fromJson(String source) => AddressEntity.fromMap(json.decode(source));
  String? apelido;
  String? cep;
  String? numero;
  String? rua;
  String? bairro;
  String? cidade;
  String? estado;
  String? complemento;
  bool principal;
  String? latitude;
  String? longitude;
  String? id;

  Map<String, dynamic> toMap() {
    return {
      'apelido': apelido,
      'cep': cep,
      'numero': numero,
      'rua': rua,
      'bairro': bairro,
      'cidade': cidade,
      'estado': estado,
      'complemento': complemento,
      'principal': principal,
      'latitude': latitude,
      'longitude': longitude,
      'id': id,
    };
  }

  Map<String, dynamic> toMapSemId() {
    return {
      'apelido': apelido,
      'cep': cep,
      'numero': numero,
      'rua': rua,
      'bairro': bairro,
      'cidade': cidade,
      'estado': estado,
      'complemento': complemento,
      'principal': principal,
      'latitude': latitude,
      'longitude': longitude
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'AddressEntity(apelido: $apelido, cep: $cep, numero: $numero, rua: $rua, bairro: $bairro, cidade: $cidade, estado: $estado, complemento: $complemento, principal: $principal, latitude: $latitude, longitude: $longitude, id: $id)';
  }

  String toStringPedido() {
    return '$rua, $numero, $bairro, $cidade - $estado\n${complemento ?? "Sem complemento"}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is AddressEntity &&
      other.apelido == apelido &&
      other.cep == cep &&
      other.numero == numero &&
      other.rua == rua &&
      other.bairro == bairro &&
      other.cidade == cidade &&
      other.estado == estado &&
      other.complemento == complemento &&
      other.principal == principal &&
      other.latitude == latitude &&
      other.id == id &&
      other.longitude == longitude;
  }

  @override
  int get hashCode {
    return apelido.hashCode ^
      cep.hashCode ^
      numero.hashCode ^
      rua.hashCode ^
      bairro.hashCode ^
      cidade.hashCode ^
      estado.hashCode ^
      complemento.hashCode ^
      principal.hashCode ^
      latitude.hashCode ^
      id.hashCode ^
      longitude.hashCode;
  }

  AddressEntity copyWith({
    String? apelido,
    String? cep,
    String? numero,
    String? rua,
    String? bairro,
    String? cidade,
    String? estado,
    String? complemento,
    bool? principal,
    String? latitude,
    String? longitude,
    String? id,
  }) {
    return AddressEntity(
      apelido: apelido ?? this.apelido,
      cep: cep ?? this.cep,
      numero: numero ?? this.numero,
      rua: rua ?? this.rua,
      bairro: bairro ?? this.bairro,
      cidade: cidade ?? this.cidade,
      estado: estado ?? this.estado,
      complemento: complemento ?? this.complemento,
      principal: principal ?? this.principal,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      id: id ?? this.id,
    );
  }
}
