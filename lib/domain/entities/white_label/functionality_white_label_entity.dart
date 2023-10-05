import 'dart:convert';

class FunctionalityWhiteLabelEntity {
  bool inbox;
  bool plans;
  bool users;
  bool groups;
  bool master;
  bool modules;
  bool companies;
  bool knowledgeBase;
  bool notifications;
  bool financialEducation;
  bool ecommerce;
  FunctionalityWhiteLabelEntity({
    required this.inbox,
    required this.plans,
    required this.users,
    required this.groups,
    required this.master,
    required this.modules,
    required this.companies,
    required this.knowledgeBase,
    required this.notifications,
    required this.financialEducation,
    required this.ecommerce,
  });

  FunctionalityWhiteLabelEntity copyWith({
    bool? inbox,
    bool? plans,
    bool? users,
    bool? groups,
    bool? master,
    bool? modules,
    bool? companies,
    bool? knowledgeBase,
    bool? notifications,
    bool? financialEducation,
    bool? ecommerce,
  }) {
    return FunctionalityWhiteLabelEntity(
      inbox: inbox ?? this.inbox,
      plans: plans ?? this.plans,
      users: users ?? this.users,
      groups: groups ?? this.groups,
      master: master ?? this.master,
      modules: modules ?? this.modules,
      companies: companies ?? this.companies,
      knowledgeBase: knowledgeBase ?? this.knowledgeBase,
      notifications: notifications ?? this.notifications,
      financialEducation: financialEducation ?? this.financialEducation,
      ecommerce: ecommerce ?? this.ecommerce,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'inbox': inbox,
      'plans': plans,
      'users': users,
      'groups': groups,
      'master': master,
      'modules': modules,
      'companies': companies,
      'knowledgeBase': knowledgeBase,
      'notifications': notifications,
      'financialEducation': financialEducation,
      'ecommerce': ecommerce,
    };
  }

  factory FunctionalityWhiteLabelEntity.fromMap(Map<String, dynamic> map) {
    return FunctionalityWhiteLabelEntity(
      inbox: map['inbox'] ?? false,
      plans: map['plans'] ?? false,
      users: map['users'] ?? false,
      groups: map['groups'] ?? false,
      master: map['master'] ?? false,
      modules: map['modules'] ?? false,
      companies: map['companies'] ?? false,
      knowledgeBase: map['knowledgeBase'] ?? false,
      notifications: map['notifications'] ?? false,
      financialEducation: map['financialEducation'] ?? false,
      ecommerce: map['ecommerce'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory FunctionalityWhiteLabelEntity.fromJson(String source) => FunctionalityWhiteLabelEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'FunctionalityWhiteLabelEntity(inbox: $inbox, plans: $plans, users: $users, ecommerce: $ecommerce, groups: $groups, master: $master, modules: $modules, companies: $companies, knowledgeBase: $knowledgeBase, notifications: $notifications, financialEducation: $financialEducation)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is FunctionalityWhiteLabelEntity &&
      other.inbox == inbox &&
      other.plans == plans &&
      other.users == users &&
      other.groups == groups &&
      other.master == master &&
      other.modules == modules &&
      other.companies == companies &&
      other.knowledgeBase == knowledgeBase &&
      other.notifications == notifications &&
      other.ecommerce == ecommerce &&
      other.financialEducation == financialEducation;
  }

  @override
  int get hashCode {
    return inbox.hashCode ^
      plans.hashCode ^
      users.hashCode ^
      groups.hashCode ^
      master.hashCode ^
      modules.hashCode ^
      companies.hashCode ^
      knowledgeBase.hashCode ^
      notifications.hashCode ^
      ecommerce.hashCode ^
      financialEducation.hashCode;
  }
}
