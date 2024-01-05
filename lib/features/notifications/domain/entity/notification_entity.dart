import 'dart:convert';

class NotificationEntity {
  String? id;
  String title;
  String subtitle;
  String? link;
  String? createdAt;
  bool send;
  
  NotificationEntity({
    this.id,
    required this.title,
    required this.subtitle,
    this.link,
    this.createdAt,
    this.send = false,
  });

  NotificationEntity copyWith({
    String? id,
    String? title,
    String? subtitle,
    String? link,
    String? createdAt,
    bool? send,
  }) {
    return NotificationEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      link: link ?? this.link,
      createdAt: createdAt ?? this.createdAt,
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
      send: map['send'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory NotificationEntity.fromJson(String source) => NotificationEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'NotificationEntity(id: $id, title: $title, subtitle: $subtitle, link: $link, send: $send, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is NotificationEntity &&
      other.id == id &&
      other.title == title &&
      other.subtitle == subtitle &&
      other.link == link &&
      other.send == send &&
      other.createdAt == createdAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      title.hashCode ^
      subtitle.hashCode ^
      link.hashCode ^
      send.hashCode ^
      createdAt.hashCode;
  }
}
