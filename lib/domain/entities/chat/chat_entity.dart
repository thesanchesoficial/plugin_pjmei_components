import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class ChatEntity {
  String? id;
  String? senderId;
  String? chatTitle;
  String? chatDescription;
  String? communityId;
  ParticipantChat createdBy;
  Timestamp createdDate;
  Timestamp updatedDate;
  String? lastMessage;
  String origin;
  List<ParticipantChat> administrators;
  List<ParticipantChat> participants;
  List<String> participantsList;
  bool? canMembersEditGroupData;
  bool? membersCanMessage;
  bool isPublic;
  AdditionalChat? additional;

  ChatEntity({
    this.id,
    this.senderId,
    this.chatTitle,
    this.chatDescription,
    this.communityId,
    required this.createdBy,
    required this.createdDate,
    required this.updatedDate,
    this.lastMessage,
    required this.origin,
    required this.administrators,
    required this.participants,
    required this.participantsList,
    this.canMembersEditGroupData,
    this.membersCanMessage,
    required this.isPublic,
    this.additional,
  });

  ChatEntity copyWith({
    String? id,
    String? senderId,
    String? chatTitle,
    String? chatDescription,
    String? communityId,
    ParticipantChat? createdBy,
    Timestamp? createdDate,
    Timestamp? updatedDate,
    String? lastMessage,
    String? origin,
    List<ParticipantChat>? administrators,
    List<ParticipantChat>? participants,
    List<String>? participantsList,
    bool? canMembersEditGroupData,
    bool? membersCanMessage,
    bool? isPublic,
    AdditionalChat? additional,
  }) {
    return ChatEntity(
      id: id ?? this.id,
      senderId: senderId ?? this.senderId,
      chatTitle: chatTitle ?? this.chatTitle,
      chatDescription: chatDescription ?? this.chatDescription,
      communityId: communityId ?? this.communityId,
      createdBy: createdBy ?? this.createdBy,
      createdDate: createdDate ?? this.createdDate,
      updatedDate: updatedDate ?? this.updatedDate,
      lastMessage: lastMessage ?? this.lastMessage,
      origin: origin ?? this.origin,
      administrators: administrators ?? this.administrators,
      participants: participants ?? this.participants,
      participantsList: participantsList ?? this.participantsList,
      canMembersEditGroupData: canMembersEditGroupData ?? this.canMembersEditGroupData,
      membersCanMessage: membersCanMessage ?? this.membersCanMessage,
      isPublic: isPublic ?? this.isPublic,
      additional: additional ?? this.additional,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'senderId': senderId,
      'chatTitle': chatTitle,
      'chatDescription': chatDescription,
      'communityId': communityId,
      'createdBy': createdBy.toMap(),
      'createdDate': createdDate,
      'updatedDate': updatedDate,
      'lastMessage': lastMessage,
      'origin': origin,
      'administrators': administrators.map((x) => x.toMap()).toList(),
      'participants': participants.map((x) => x.toMap()).toList(),
      'participantsList': participantsList.map((x) => x).toList(),
      'canMembersEditGroupData': canMembersEditGroupData,
      'membersCanMessage': membersCanMessage,
      'isPublic': isPublic,
      'additional': additional?.toMap(),
    };
  }

  factory ChatEntity.fromMap(Map<String, dynamic> map) {
    return ChatEntity(
      id: map['id'] ?? '',
      senderId: map['senderId'] ?? '',
      chatTitle: map['chatTitle'] ?? '',
      chatDescription: map['chatDescription'] ?? '',
      communityId: map['communityId'] ?? '',
      createdBy: ParticipantChat.fromMap(map['createdBy']),
      createdDate: map['createdDate'],
      updatedDate: map['updatedDate'],
      lastMessage: map['lastMessage'] ?? '',
      origin: map['origin'] ?? '',
      administrators: List<ParticipantChat>.from(map['administrators']?.map((x) => ParticipantChat.fromMap(x))),
      participants: List<ParticipantChat>.from(map['participants']?.map((x) => ParticipantChat.fromMap(x))),
      participantsList: List<String>.from(map['participantsList']),
      canMembersEditGroupData: map['canMembersEditGroupData'] ?? false,
      membersCanMessage: map['membersCanMessage'] ?? false,
      isPublic: map['isPublic'] ?? false,
      additional: map['additional'] == null ? null : AdditionalChat.fromMap(map['additional']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatEntity.fromJson(String source) => ChatEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ChatEntity(id: $id, senderId: $senderId, chatTitle: $chatTitle, chatDescription: $chatDescription, communityId: $communityId, createdDate: $createdDate, updatedDate: $updatedDate, lastMessage: $lastMessage, origin: $origin, administrators: $administrators, participants: $participants, canMembersEditGroupData: $canMembersEditGroupData, membersCanMessage: $membersCanMessage, isPublic: $isPublic)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ChatEntity &&
      other.id == id &&
      other.senderId == senderId &&
      other.chatTitle == chatTitle &&
      other.chatDescription == chatDescription &&
      other.communityId == communityId &&
      other.createdBy == createdBy &&
      other.createdDate == createdDate &&
      other.updatedDate == updatedDate &&
      other.lastMessage == lastMessage &&
      other.origin == origin &&
      listEquals(other.administrators, administrators) &&
      listEquals(other.participants, participants) &&
      other.canMembersEditGroupData == canMembersEditGroupData &&
      other.membersCanMessage == membersCanMessage &&
      other.additional == additional &&
      other.isPublic == isPublic;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      senderId.hashCode ^
      chatTitle.hashCode ^
      chatDescription.hashCode ^
      communityId.hashCode ^
      createdBy.hashCode ^
      createdDate.hashCode ^
      updatedDate.hashCode ^
      lastMessage.hashCode ^
      origin.hashCode ^
      administrators.hashCode ^
      participants.hashCode ^
      canMembersEditGroupData.hashCode ^
      membersCanMessage.hashCode ^
      additional.hashCode ^
      isPublic.hashCode;
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
      createdDate: map['createdDate'],
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

class MessageChatEntity {
  Timestamp createdDate;
  Timestamp updatedDate;
  String owner;
  String message;
  String senderId;
  String type;
  List<ReactionChatEntity>? reactions;
  List<ParticipantChat>? readBy;
  MessageChatEntity? replyMessage;

  MessageChatEntity({
    required this.createdDate,
    required this.updatedDate,
    required this.owner,
    required this.message,
    required this.senderId,
    required this.type,
    this.reactions,
    this.readBy,
    this.replyMessage,
  });

  MessageChatEntity copyWith({
    Timestamp? createdDate,
    Timestamp? updatedDate,
    String? owner,
    String? message,
    String? senderId,
    String? type,
    List<ReactionChatEntity>? reactions,
    List<ParticipantChat>? readBy,
  }) {
    return MessageChatEntity(
      createdDate: createdDate ?? this.createdDate,
      updatedDate: updatedDate ?? this.updatedDate,
      owner: owner ?? this.owner,
      message: message ?? this.message,
      senderId: senderId ?? this.senderId,
      type: type ?? this.type,
      reactions: reactions ?? this.reactions,
      readBy: readBy ?? this.readBy,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'createdDate': createdDate,
      'updatedDate': updatedDate,
      'owner': owner,
      'message': message,
      'senderId': senderId,
      'type': type,
      'reactions': reactions == null ? [] : reactions!.map((x) => x.toMap()).toList(),
      'readBy': readBy == null ? [] : readBy!.map((x) => x.toMap()).toList(),
    };
  }

  factory MessageChatEntity.fromMap(Map<String, dynamic> map) {
    return MessageChatEntity(
      createdDate: map['createdDate'],
      updatedDate: map['updatedDate'],
      owner: map['owner'] ?? '',
      message: map['message'] ?? '',
      senderId: map['senderId'] ?? '',
      type: map['type'] ?? '',
      reactions: List<ReactionChatEntity>.from(map['reactions']?.map((x) => ReactionChatEntity.fromMap(x))),
      readBy: List<ParticipantChat>.from(map['readBy']?.map((x) => ParticipantChat.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory MessageChatEntity.fromJson(String source) => MessageChatEntity.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is MessageChatEntity &&
      other.createdDate == createdDate &&
      other.updatedDate == updatedDate &&
      other.owner == owner &&
      other.message == message &&
      other.senderId == senderId &&
      other.type == type &&
      listEquals(other.reactions, reactions) &&
      listEquals(other.readBy, readBy);
  }

  @override
  int get hashCode {
    return createdDate.hashCode ^
      updatedDate.hashCode ^
      message.hashCode ^
      owner.hashCode ^
      senderId.hashCode ^
      type.hashCode ^
      reactions.hashCode ^
      readBy.hashCode;
  }

  @override
  String toString() {
    return 'MessageChatEntity(createdDate: $createdDate, updatedDate: $updatedDate, message: $message, senderId: $senderId, type: $type, reactions: $reactions, readBy: $readBy)';
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
