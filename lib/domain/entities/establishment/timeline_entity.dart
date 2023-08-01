import 'dart:convert';

class TimelineEntity {
  TimelineEntity({
    this.id,
    this.diaSemana,
    this.horarioInicio,
    this.horarioTermino,
    this.createdAt,
  });

  factory TimelineEntity.fromMap(Map<String, dynamic> map) {
    return TimelineEntity(
      id: map['id'],
      diaSemana: map['dia_semana'] ?? map['diaSemana'],
      horarioInicio: map['horario_inicio'] ?? map['horarioInicio'],
      horarioTermino: map['horario_termino'] ?? map['horarioTermino'],
      createdAt: map['created_at'] ?? map['createdAt'],
    );
  }

  factory TimelineEntity.fromJson(String source) => TimelineEntity.fromMap(json.decode(source));
  String? id;
  String? diaSemana;
  String? horarioInicio;
  String? horarioTermino;
  String? createdAt;

  TimelineEntity copyWith({
    String? id,
    String? diaSemana,
    String? horarioInicio,
    String? horarioTermino,
    String? createdAt,
  }) {
    return TimelineEntity(
      id: id ?? this.id,
      diaSemana: diaSemana ?? this.diaSemana,
      horarioInicio: horarioInicio ?? this.horarioInicio,
      horarioTermino: horarioTermino ?? this.horarioTermino,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'dia_semana': diaSemana,
      'horario_inicio': horarioInicio,
      'horario_termino': horarioTermino,
      'created_at': createdAt,
    };
  }

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMapApi() {
    return {
      'dia_semana': diaSemana,
      'horario_inicio': horarioInicio,
      'horario_termino': horarioTermino,
    };
  }

  @override
  String toString() {
    return 'TimelineEntity(id: $id, diaSemana: $diaSemana, horarioInicio: $horarioInicio, horarioTermino: $horarioTermino, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is TimelineEntity &&
      o.id == id &&
      o.diaSemana == diaSemana &&
      o.horarioInicio == horarioInicio &&
      o.horarioTermino == horarioTermino &&
      o.createdAt == createdAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      diaSemana.hashCode ^
      horarioInicio.hashCode ^
      horarioTermino.hashCode ^
      createdAt.hashCode;
  }
}
