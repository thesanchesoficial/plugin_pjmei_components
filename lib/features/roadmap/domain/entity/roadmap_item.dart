import 'dart:convert';

class RoadmapEntity {
  String name;
  String description;
  String status;
  String prevision;
  String id;
  String createdDate;
  String updatedDate;
  
  RoadmapEntity({
    required this.name,
    required this.description,
    required this.status,
    required this.prevision,
    required this.id,
    required this.createdDate,
    required this.updatedDate,
  });

  RoadmapEntity copyWith({
    String? name,
    String? description,
    String? status,
    String? prevision,
    String? id,
    String? createdDate,
    String? updatedDate,
  }) {
    return RoadmapEntity(
      name: name ?? this.name,
      description: description ?? this.description,
      status: status ?? this.status,
      prevision: prevision ?? this.prevision,
      id: id ?? this.id,
      createdDate: createdDate ?? this.createdDate,
      updatedDate: updatedDate ?? this.updatedDate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'status': status,
      'prevision': prevision,
      'id': id,
      'createdDate': createdDate,
      'updatedDate': updatedDate,
    };
  }

  factory RoadmapEntity.fromMap(Map<String, dynamic> map) {
    return RoadmapEntity(
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      status: map['status'] ?? '',
      prevision: map['prevision'] ?? '',
      id: map['id'] ?? '',
      createdDate: map['createdDate'] ?? '',
      updatedDate: map['updatedDate'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory RoadmapEntity.fromJson(String source) => RoadmapEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'RoadmapEntity(name: $name, description: $description, status: $status, prevision: $prevision, id: $id, createdDate: $createdDate, updatedDate: $updatedDate)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is RoadmapEntity &&
      other.name == name &&
      other.description == description &&
      other.status == status &&
      other.prevision == prevision &&
      other.id == id &&
      other.createdDate == createdDate &&
      other.updatedDate == updatedDate;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      description.hashCode ^
      status.hashCode ^
      prevision.hashCode ^
      id.hashCode ^
      createdDate.hashCode ^
      updatedDate.hashCode;
  }
}
