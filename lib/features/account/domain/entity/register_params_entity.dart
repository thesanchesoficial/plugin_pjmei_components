import 'dart:convert';

class RegisterChurchParams {
  RegisterChurchParams({
    this.documentNumber,
    this.documentType,
    this.name,
    this.email,
    this.phone,
    this.postalCode,
    this.road,
    this.neighborhood,
    this.city,
    this.state,
    this.country,
    this.number,
    this.complement,
    this.referencePoint,
    this.latitude,
    this.longitude,
    this.phoneNumber,
  });

  factory RegisterChurchParams.fromMap(Map<String, dynamic> map) {
    return RegisterChurchParams(
      documentNumber: map['documentNumber'],
      documentType: map['documentType'],
      name: map['name'],
      email: map['email'],
      phone: map['phone'],
      postalCode: map['postalCode'],
      road: map['road'],
      neighborhood: map['neighborhood'],
      city: map['city'],
      state: map['state'],
      country: map['country'],
      number: map['number'],
      complement: map['complement'],
      referencePoint: map['referencePoint'],
      latitude: map['latitude'],
      longitude: map['longitude'],
      phoneNumber: map['phoneNumber'],
    );
  }

  factory RegisterChurchParams.fromJson(String source) => RegisterChurchParams.fromMap(json.decode(source));
  final String? documentNumber;
  final String? documentType;
  final String? name;
  final String? email;
  final String? phone;
  final String? postalCode;
  final String? road;
  final String? neighborhood;
  final String? city;
  final String? state;
  final String? country;
  final String? number;
  final String? complement;
  final String? referencePoint;
  final String? latitude;
  final String? longitude;
  final Map<String, String>? phoneNumber;

  RegisterChurchParams copyWith({
    String? documentNumber,
    String? documentType,
    String? name,
    String? email,
    String? phone,
    String? postalCode,
    String? road,
    String? neighborhood,
    String? city,
    String? state,
    String? country,
    String? number,
    String? complement,
    String? referencePoint,
    String? latitude,
    String? longitude,
    Map<String, String>? phoneNumber,
  }) {
    return RegisterChurchParams(
      documentNumber: documentNumber ?? this.documentNumber,
      documentType: documentType ?? this.documentType,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      postalCode: postalCode ?? this.postalCode,
      road: road ?? this.road,
      neighborhood: neighborhood ?? this.neighborhood,
      city: city ?? this.city,
      state: state ?? this.state,
      country: country ?? this.country,
      number: number ?? this.number,
      complement: complement ?? this.complement,
      referencePoint: referencePoint ?? this.referencePoint,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'documentNumber': documentNumber,
      'documentType': documentType,
      'name': name,
      'email': email,
      'phone': phone,
      'postalCode': postalCode,
      'road': road,
      'neighborhood': neighborhood,
      'city': city,
      'state': state,
      'country': country,
      'number': number,
      'complement': complement,
      'referencePoint': referencePoint,
      'latitude': latitude,
      'longitude': longitude,
      'phoneNumber': phoneNumber,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'RegisterChurchParams(documentNumber: $documentNumber, documentType: $documentType, name: $name, email: $email, phone: $phone, postalCode: $postalCode, road: $road, neighborhood: $neighborhood, city: $city, state: $state, country: $country, number: $number, complement: $complement, referencePoint: $referencePoint, phoneNumber: $phoneNumber, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RegisterChurchParams &&
        other.documentNumber == documentNumber &&
        other.documentType == documentType &&
        other.name == name &&
        other.email == email &&
        other.phone == phone &&
        other.postalCode == postalCode &&
        other.road == road &&
        other.neighborhood == neighborhood &&
        other.city == city &&
        other.state == state &&
        other.country == country &&
        other.number == number &&
        other.complement == complement &&
        other.referencePoint == referencePoint &&
        other.latitude == latitude &&
        other.phoneNumber == phoneNumber &&
        other.longitude == longitude;
  }

  @override
  int get hashCode {
    return documentNumber.hashCode ^
        documentType.hashCode ^
        name.hashCode ^
        email.hashCode ^
        phone.hashCode ^
        postalCode.hashCode ^
        road.hashCode ^
        neighborhood.hashCode ^
        city.hashCode ^
        state.hashCode ^
        country.hashCode ^
        number.hashCode ^
        complement.hashCode ^
        referencePoint.hashCode ^
        latitude.hashCode ^
        phoneNumber.hashCode ^
        longitude.hashCode;
  }
}
