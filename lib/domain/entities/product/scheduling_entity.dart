import 'dart:convert';

class SchedulingEntity {
  const SchedulingEntity({
    this.id,
    this.dataInicio,
    this.dataTermino,
    this.createdAt,
    this.updatedAt,
  });

  factory SchedulingEntity.fromMap(Map<String, dynamic> map) {
    return SchedulingEntity(
      id: map['id'],
      dataInicio: map['data_inicio'],
      dataTermino: map['data_termino'],
      createdAt: map['created_at'],
      updatedAt: map['updated_at'],
    );
  }

  factory SchedulingEntity.fromJson(String source) => SchedulingEntity.fromMap(json.decode(source));
  final String? id;
  final String? dataInicio;
  final String? dataTermino;
  final String? createdAt;
  final String? updatedAt;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'data_inicio': dataInicio,
      'data_termino': dataTermino,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }

  String toJson() => json.encode(toMap());

  SchedulingEntity copyWith({
    String? id,
    String? dataInicio,
    String? dataTermino,
    String? createdAt,
    String? updatedAt,
  }) {
    return SchedulingEntity(
      id: id ?? this.id,
      dataInicio: dataInicio ?? this.dataInicio,
      dataTermino: dataTermino ?? this.dataTermino,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  String toString() {
    return 'SchedulingEntity(id: $id, dataInicio: $dataInicio, dataTermino: $dataTermino, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

}
