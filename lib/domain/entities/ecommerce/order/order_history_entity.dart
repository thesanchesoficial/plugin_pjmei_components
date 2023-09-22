// import 'dart:convert';

// class OrderHistoryEntity {

//   OrderHistoryEntity({
//     this.id,
//     this.createdAt,
//     this.status,
//   });

//   factory OrderHistoryEntity.fromMap(Map<String, dynamic> map) {
//     return OrderHistoryEntity(
//       id: map['id'].toString(),
//       createdAt: map['created_at'].toString(),
//       status: map['status'].toString(),
//     );
//   }

//   factory OrderHistoryEntity.fromJson(String source) => OrderHistoryEntity.fromMap(json.decode(source));
//   String? id;
//   String? createdAt;
//   String? status;

//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'createdAt': createdAt,
//       'status': status,
//     };
//   }

//   String toJson() => json.encode(toMap());

//   @override
//   String toString() => 'OrderHistoryEntity(id: $id, createdAt: $createdAt, status: $status)';

//   OrderHistoryEntity copyWith({
//     String? id,
//     String? createdAt,
//     String? status,
//   }) {
//     return OrderHistoryEntity(
//       id: id ?? this.id,
//       createdAt: createdAt ?? this.createdAt,
//       status: status ?? this.status,
//     );
//   }
// }
