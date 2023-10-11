import 'dart:convert';

import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class AddressEntity {
  String? id;
  String? nickname;
  String? street;
  String? neighborhood;
  String? zipCode;
  String? city;
  String? state;
  String? complement;
  String? number;
  String? createdAt;
  String? updatedAt;
  String? latitude;
  String? longitude;
  bool? main;
  AddressEntity({
    this.id,
    this.nickname,
    this.street,
    this.neighborhood,
    this.zipCode,
    this.city,
    this.state,
    this.complement,
    this.number,
    this.createdAt,
    this.updatedAt,
    this.latitude,
    this.longitude,
    this.main,
  });

  AddressEntity copyWith({
    String? id,
    String? nickname,
    String? street,
    String? neighborhood,
    String? zipCode,
    String? city,
    String? state,
    String? complement,
    String? number,
    String? createdAt,
    String? updatedAt,
    String? latitude,
    String? longitude,
    bool? main,
  }) {
    return AddressEntity(
      id: id ?? this.id,
      nickname: nickname ?? this.nickname,
      street: street ?? this.street,
      neighborhood: neighborhood ?? this.neighborhood,
      zipCode: zipCode ?? this.zipCode,
      city: city ?? this.city,
      state: state ?? this.state,
      complement: complement ?? this.complement,
      number: number ?? this.number,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      main: main ?? this.main,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nickname': nickname,
      'street': street,
      'neighborhood': neighborhood,
      'zipCode': zipCode,
      'city': city,
      'state': state,
      'complement': complement,
      'number': number,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'latitude': latitude,
      'longitude': longitude,
      'main': main,
    };
  }

  factory AddressEntity.fromMap(Map<String, dynamic> map) {
    return AddressEntity(
      id: map['id'],
      nickname: map['nickname'],
      street: map['street'],
      neighborhood: map['neighborhood'],
      zipCode: map['zipCode'],
      city: map['city'],
      state: map['state'],
      complement: map['complement'],
      number: map['number'],
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
      latitude: map['latitude'],
      longitude: map['longitude'],
      main: map['main'] ?? false,
    );
  }

  String toBasic() => '$street, $number - ${Valid.text(neighborhood) ? '$neighborhood' : '$city'}';

  String toJson() => json.encode(toMap());

  factory AddressEntity.fromJson(String source) => AddressEntity.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is AddressEntity &&
      other.id == id &&
      other.nickname == nickname &&
      other.street == street &&
      other.neighborhood == neighborhood &&
      other.zipCode == zipCode &&
      other.city == city &&
      other.state == state &&
      other.complement == complement &&
      other.number == number &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.latitude == latitude &&
      other.longitude == longitude &&
      other.main == main;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      nickname.hashCode ^
      street.hashCode ^
      neighborhood.hashCode ^
      zipCode.hashCode ^
      city.hashCode ^
      state.hashCode ^
      complement.hashCode ^
      number.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      latitude.hashCode ^
      longitude.hashCode ^
      main.hashCode;
  }

  @override
  String toString() {
    return 'AddressEntity(id: $id, nickname: $nickname, street: $street, neighborhood: $neighborhood, zipCode: $zipCode, city: $city, state: $state, complement: $complement, number: $number, createdAt: $createdAt, updatedAt: $updatedAt, latitude: $latitude, longitude: $longitude, main: $main)';
  }
}
