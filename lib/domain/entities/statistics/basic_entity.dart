import 'dart:convert';

class BasicStatisticsEntity {
  final int users;
  final int companies;
  final int products;
  final int schedules;
  BasicStatisticsEntity({
    required this.users,
    required this.companies,
    required this.products,
    required this.schedules,
  });

  BasicStatisticsEntity copyWith({
    int? users,
    int? companies,
    int? products,
    int? schedules,
  }) {
    return BasicStatisticsEntity(
      users: users ?? this.users,
      companies: companies ?? this.companies,
      products: products ?? this.products,
      schedules: schedules ?? this.schedules,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'users': users,
      'companies': companies,
      'products': products,
      'schedules': schedules,
    };
  }

  factory BasicStatisticsEntity.fromMap(Map<String, dynamic> map) {
    return BasicStatisticsEntity(
      users: map['users']?.toInt() ?? 0,
      companies: map['companies']?.toInt() ?? 0,
      products: map['products']?.toInt() ?? 0,
      schedules: map['schedules']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory BasicStatisticsEntity.fromJson(String source) => BasicStatisticsEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'BasicStatisticsEntity(users: $users, companies: $companies, products: $products, schedules: $schedules)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is BasicStatisticsEntity &&
      other.users == users &&
      other.companies == companies &&
      other.products == products &&
      other.schedules == schedules;
  }

  @override
  int get hashCode {
    return users.hashCode ^
      companies.hashCode ^
      products.hashCode ^
      schedules.hashCode;
  }
}
