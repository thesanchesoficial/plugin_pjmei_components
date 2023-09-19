import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class MessageChatEntity {
  String? id;
  String type;
  String value;
  String? extra;
  ParticipantChat? owner;
  List<ParticipantChat> readBy;
  List<ReactionChatEntity>? reactions;
  MessageChatEntity? replyMessage;
  Timestamp createdDate;
  Timestamp updatedDate;
  MessageChatEntity({
    this.id,
    required this.type,
    required this.value,
    this.extra,
    this.owner,
    required this.readBy,
    this.reactions,
    required this.createdDate,
    required this.updatedDate,
  });

  MessageChatEntity copyWith({
    String? id,
    String? type,
    String? value,
    String? extra,
    ParticipantChat? owner,
    List<ParticipantChat>? readBy,
    List<ReactionChatEntity>? reactions,
    Timestamp? createdDate,
    Timestamp? updatedDate,
  }) {
    return MessageChatEntity(
      id: id ?? this.id,
      type: type ?? this.type,
      value: value ?? this.value,
      extra: extra ?? this.extra,
      owner: owner ?? this.owner,
      readBy: readBy ?? this.readBy,
      reactions: reactions ?? this.reactions,
      createdDate: createdDate ?? this.createdDate,
      updatedDate: updatedDate ?? this.updatedDate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'type': type,
      'value': value,
      'extra': extra,
      'owner': owner?.toMap(),
      'readBy': readBy.map((x) => x.toMap()).toList(),
      'reactions': reactions?.map((x) => x.toMap()).toList(),
      'createdDate': createdDate,
      'updatedDate': updatedDate,
    };
  }

  factory MessageChatEntity.fromMap(Map<String, dynamic> map) {
    return MessageChatEntity(
      id: map['id'],
      type: map['type'] ?? '',
      value: map['value'] ?? '',
      extra: map['extra'],
      owner: map['owner'] != null ? ParticipantChat.fromMap(map['owner']) : null,
      readBy: List<ParticipantChat>.from(map['readBy']?.map((x) => ParticipantChat.fromMap(x))),
      reactions: map['reactions'] != null ? List<ReactionChatEntity>.from(map['reactions']?.map((x) => ReactionChatEntity.fromMap(x))) : null,
      createdDate: (map['createdDate']),
      updatedDate: (map['updatedDate']),
    );
  }

  String toJson() => json.encode(toMap());

  factory MessageChatEntity.fromJson(String source) => MessageChatEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MessageChatEntity(id: $id, type: $type, value: $value, extra: $extra, owner: $owner, readBy: $readBy, reactions: $reactions, createdDate: $createdDate, updatedDate: $updatedDate)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is MessageChatEntity &&
      other.id == id &&
      other.type == type &&
      other.value == value &&
      other.extra == extra &&
      other.owner == owner &&
      listEquals(other.readBy, readBy) &&
      listEquals(other.reactions, reactions) &&
      other.createdDate == createdDate &&
      other.updatedDate == updatedDate;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      type.hashCode ^
      value.hashCode ^
      extra.hashCode ^
      owner.hashCode ^
      readBy.hashCode ^
      reactions.hashCode ^
      createdDate.hashCode ^
      updatedDate.hashCode;
  }
}

class ChatEntity {
  String? id;
  String? chatTitle;
  String? chatDescription;
  String? communityId;
  ParticipantChat createdBy;
  Timestamp createdDate;
  Timestamp updatedDate;
  MessageChatEntity? lastMessage;
  List<ParticipantChat> administrators;
  List<ParticipantChat> participants;
  bool? canMembersEditGroupData;
  bool? membersCanMessage;
  bool isPublic;
  bool archived;
  AdditionalChat? additional;
  ChatEntity({
    this.id,
    this.chatTitle,
    this.chatDescription,
    this.communityId,
    required this.createdBy,
    required this.createdDate,
    required this.updatedDate,
    this.lastMessage,
    required this.administrators,
    required this.participants,
    this.canMembersEditGroupData,
    this.membersCanMessage,
    required this.isPublic,
    required this.archived,
    this.additional,
  });

  ChatEntity copyWith({
    String? id,
    String? chatTitle,
    String? chatDescription,
    String? communityId,
    ParticipantChat? createdBy,
    Timestamp? createdDate,
    Timestamp? updatedDate,
    MessageChatEntity? lastMessage,
    List<ParticipantChat>? administrators,
    List<ParticipantChat>? participants,
    bool? canMembersEditGroupData,
    bool? membersCanMessage,
    bool? isPublic,
    bool? archived,
    AdditionalChat? additional,
  }) {
    return ChatEntity(
      id: id ?? this.id,
      chatTitle: chatTitle ?? this.chatTitle,
      chatDescription: chatDescription ?? this.chatDescription,
      communityId: communityId ?? this.communityId,
      createdBy: createdBy ?? this.createdBy,
      createdDate: createdDate ?? this.createdDate,
      updatedDate: updatedDate ?? this.updatedDate,
      lastMessage: lastMessage ?? this.lastMessage,
      administrators: administrators ?? this.administrators,
      participants: participants ?? this.participants,
      canMembersEditGroupData: canMembersEditGroupData ?? this.canMembersEditGroupData,
      membersCanMessage: membersCanMessage ?? this.membersCanMessage,
      isPublic: isPublic ?? this.isPublic,
      archived: archived ?? this.archived,
      additional: additional ?? this.additional,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'chatTitle': chatTitle,
      'chatDescription': chatDescription,
      'communityId': communityId,
      'createdBy': createdBy.toMap(),
      'createdDate': createdDate,
      'updatedDate': updatedDate,
      'lastMessage': lastMessage?.toMap(),
      'administrators': administrators.map((x) => x.toMap()).toList(),
      'participants': participants.map((x) => x.toMap()).toList(),
      'canMembersEditGroupData': canMembersEditGroupData,
      'membersCanMessage': membersCanMessage,
      'isPublic': isPublic,
      'archived': archived,
      'additional': additional?.toMap(),
    };
  }

  factory ChatEntity.fromMap(Map<String, dynamic> map) {
    return ChatEntity(
      id: map['id'],
      chatTitle: map['chatTitle'],
      chatDescription: map['chatDescription'],
      communityId: map['communityId'],
      createdBy: ParticipantChat.fromMap(map['createdBy']),
      createdDate: (map['createdDate']),
      updatedDate: (map['updatedDate']),
      lastMessage: map['lastMessage'] != null ? MessageChatEntity.fromMap(map['lastMessage']) : null,
      administrators: List<ParticipantChat>.from(map['administrators']?.map((x) => ParticipantChat.fromMap(x))),
      participants: List<ParticipantChat>.from(map['participants']?.map((x) => ParticipantChat.fromMap(x))),
      canMembersEditGroupData: map['canMembersEditGroupData'],
      membersCanMessage: map['membersCanMessage'],
      isPublic: map['isPublic'] ?? false,
      archived: map['archived'] ?? false,
      additional: map['additional'] != null ? AdditionalChat.fromMap(map['additional']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatEntity.fromJson(String source) => ChatEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ChatEntity(id: $id, chatTitle: $chatTitle, chatDescription: $chatDescription, communityId: $communityId, createdBy: $createdBy, createdDate: $createdDate, updatedDate: $updatedDate, lastMessage: $lastMessage, administrators: $administrators, participants: $participants, canMembersEditGroupData: $canMembersEditGroupData, membersCanMessage: $membersCanMessage, isPublic: $isPublic, archived: $archived, additional: $additional)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ChatEntity &&
      other.id == id &&
      other.chatTitle == chatTitle &&
      other.chatDescription == chatDescription &&
      other.communityId == communityId &&
      other.createdBy == createdBy &&
      other.createdDate == createdDate &&
      other.updatedDate == updatedDate &&
      other.lastMessage == lastMessage &&
      listEquals(other.administrators, administrators) &&
      listEquals(other.participants, participants) &&
      other.canMembersEditGroupData == canMembersEditGroupData &&
      other.membersCanMessage == membersCanMessage &&
      other.isPublic == isPublic &&
      other.archived == archived &&
      other.additional == additional;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      chatTitle.hashCode ^
      chatDescription.hashCode ^
      communityId.hashCode ^
      createdBy.hashCode ^
      createdDate.hashCode ^
      updatedDate.hashCode ^
      lastMessage.hashCode ^
      administrators.hashCode ^
      participants.hashCode ^
      canMembersEditGroupData.hashCode ^
      membersCanMessage.hashCode ^
      isPublic.hashCode ^
      archived.hashCode ^
      additional.hashCode;
  }
}

class ParticipantChat {
  String name;
  String id;
  String type;
  Timestamp createdDate;
  ParticipantChat({
    required this.name,
    required this.id,
    required this.type,
    required this.createdDate,
  });

  ParticipantChat copyWith({
    String? name,
    String? id,
    String? type,
    Timestamp? createdDate,
  }) {
    return ParticipantChat(
      name: name ?? this.name,
      id: id ?? this.id,
      type: type ?? this.type,
      createdDate: createdDate ?? this.createdDate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'id': id,
      'type': type,
      'createdDate': createdDate,
    };
  }

  factory ParticipantChat.fromMap(Map<String, dynamic> map) {
    return ParticipantChat(
      name: map['name'] ?? '',
      id: map['id'] ?? '',
      type: map['type'] ?? '',
      createdDate: (map['createdDate']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ParticipantChat.fromJson(String source) => ParticipantChat.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ParticipantChat(name: $name, id: $id, type: $type, createdDate: $createdDate)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ParticipantChat &&
      other.name == name &&
      other.id == id &&
      other.type == type &&
      other.createdDate == createdDate;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      id.hashCode ^
      type.hashCode ^
      createdDate.hashCode;
  }
}

class ReactionChatEntity {
  String emoji;
  String participantId;

  ReactionChatEntity({
    required this.emoji,
    required this.participantId,
  });

  ReactionChatEntity copyWith({
    String? emoji,
    String? participantId,
  }) {
    return ReactionChatEntity(
      emoji: emoji ?? this.emoji,
      participantId: participantId ?? this.participantId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'emoji': emoji,
      'participantId': participantId,
    };
  }

  factory ReactionChatEntity.fromMap(Map<String, dynamic> map) {
    return ReactionChatEntity(
      emoji: map['emoji'] ?? '',
      participantId: map['participantId'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ReactionChatEntity.fromJson(String source) => ReactionChatEntity.fromMap(json.decode(source));

  @override
  String toString() => 'ReactionChatEntity(emoji: $emoji, participantId: $participantId)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ReactionChatEntity &&
      other.emoji == emoji &&
      other.participantId == participantId;
  }

  @override
  int get hashCode => emoji.hashCode ^ participantId.hashCode;
}

class AdditionalChat {
  String? orderId;
  String? schedulingId;
  Map<String, dynamic>? params;

  AdditionalChat({
    this.orderId,
    this.schedulingId,
    this.params,
  });

  AdditionalChat copyWith({
    String? orderId,
    String? schedulingId,
    Map<String, dynamic>? params,
  }) {
    return AdditionalChat(
      orderId: orderId ?? this.orderId,
      schedulingId: schedulingId ?? this.schedulingId,
      params: params ?? this.params,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'orderId': orderId,
      'schedulingId': schedulingId,
      'params': params,
    };
  }

  factory AdditionalChat.fromMap(Map<String, dynamic> map) {
    return AdditionalChat(
      orderId: map['orderId'] ?? '',
      schedulingId: map['schedulingId'] ?? '',
      params: map['params'] == null ? {} : Map<String, dynamic>.from(map['params']),
    );
  }

  String toJson() => json.encode(toMap());

  factory AdditionalChat.fromJson(String source) => AdditionalChat.fromMap(json.decode(source));

  @override
  String toString() => 'AdditionalChat(orderId: $orderId, schedulingId: $schedulingId, params: $params)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is AdditionalChat &&
      other.orderId == orderId &&
      other.schedulingId == schedulingId &&
      mapEquals(other.params, params);
  }

  @override
  int get hashCode => orderId.hashCode ^ schedulingId.hashCode ^ params.hashCode;
}
