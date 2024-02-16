import 'dart:convert';

class NotificationEntity {
  String? id;
  final String title;
  final String subtitle;
  String? link;
  String? createdAt;
  String? updatedAt;
  bool? send;
  NotificationEntity({
    this.id,
    required this.title,
    required this.subtitle,
    this.link,
    this.createdAt,
    this.updatedAt,
    this.send,
  });
  

  NotificationEntity copyWith({
    String? id,
    String? title,
    String? subtitle,
    String? link,
    String? createdAt,
    String? updatedAt,
    bool? send,
  }) {
    return NotificationEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      link: link ?? this.link,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      send: send ?? this.send,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'subtitle': subtitle,
      'link': link,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'send': send,
    };
  }

  factory NotificationEntity.fromMap(Map<String, dynamic> map) {
    return NotificationEntity(
      id: map['id'],
      title: map['title'] ?? '',
      subtitle: map['subtitle'] ?? '',
      link: map['link'],
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
      send: map['send'],
    );
  }

  String toJson() => json.encode(toMap());

  factory NotificationEntity.fromJson(String source) => NotificationEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'NotificationEntity(id: $id, title: $title, subtitle: $subtitle, link: $link, createdAt: $createdAt, updatedAt: $updatedAt, send: $send)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is NotificationEntity &&
      other.id == id &&
      other.title == title &&
      other.subtitle == subtitle &&
      other.link == link &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.send == send;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      title.hashCode ^
      subtitle.hashCode ^
      link.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      send.hashCode;
  }
}
