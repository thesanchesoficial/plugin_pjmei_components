import 'dart:convert';

class GroupEntity {
  String? id;
  String name;
  List<String> participants;
  List<String>? isBlocked;
  
  GroupEntity({
    this.id,
    required this.name,
    required this.participants,
    this.isBlocked,
  });

  GroupEntity copyWith({
    String? id,
    String? name,
    List<String>? participants,
    List<String>? isBlocked,
  }) {
    return GroupEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      participants: participants ?? this.participants,
      isBlocked: isBlocked ?? this.isBlocked,
    );
  }

  @override
  String toString() => 'GroupEntity(name: $name, participants: $participants, isBlocked: $isBlocked)';

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'participants': participants,
      'isBlocked': isBlocked,
    };
  }

  factory GroupEntity.fromMap(Map<String, dynamic> map) {
    return GroupEntity(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      participants: map['participants'] == null ? [] : List<String>.from(map['participants']),
      isBlocked: map['isBlocked'] == null ? [] : List<String>.from(map['isBlocked']),
    );
  }

  String toJson() => json.encode(toMap());

  factory GroupEntity.fromJson(String source) => GroupEntity.fromMap(json.decode(source));
}
