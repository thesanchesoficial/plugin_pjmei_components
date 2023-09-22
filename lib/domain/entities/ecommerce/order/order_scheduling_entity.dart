// import 'dart:convert';

// class OrderSchedulingEntity {

//   const OrderSchedulingEntity({
//     this.id,
//     this.dataInicio,
//     this.dataTermino,
//     this.createdAt,
//     this.updatedAt,
//   });

//   factory OrderSchedulingEntity.fromMap(Map<String, dynamic> map) {
//     return OrderSchedulingEntity(
//       id: map['id'],
//       dataInicio: map['data_inicio'],
//       dataTermino: map['data_termino'],
//       createdAt: map['created_at'],
//       updatedAt: map['updated_at'],
//     );
//   }

//   factory OrderSchedulingEntity.fromJson(String source) => OrderSchedulingEntity.fromMap(json.decode(source));
//   final String? id;
//   final String? dataInicio;
//   final String? dataTermino;
//   final String? createdAt;
//   final String? updatedAt;

//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'data_inicio': dataInicio,
//       'data_termino': dataTermino,
//       'created_at': createdAt,
//       'updated_at': updatedAt,
//     };
//   }

//   String toJson() => json.encode(toMap());

//   OrderSchedulingEntity copyWith({
//     String? id,
//     String? dataInicio,
//     String? dataTermino,
//     String? createdAt,
//     String? updatedAt,
//   }) {
//     return OrderSchedulingEntity(
//       id: id ?? this.id,
//       dataInicio: dataInicio ?? this.dataInicio,
//       dataTermino: dataTermino ?? this.dataTermino,
//       createdAt: createdAt ?? this.createdAt,
//       updatedAt: updatedAt ?? this.updatedAt,
//     );
//   }

//   @override
//   String toString() {
//     return 'OrderSchedulingEntity(id: $id, dataInicio: $dataInicio, dataTermino: $dataTermino, createdAt: $createdAt, updatedAt: $updatedAt)';
//   }
// }
