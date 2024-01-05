// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_sm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserSMStore on UserSMStoreBase, Store {
  late final _$userAtom = Atom(name: 'UserSMStoreBase.user', context: context);

  @override
  UserEntity? get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(UserEntity? value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  late final _$UserSMStoreBaseActionController =
      ActionController(name: 'UserSMStoreBase', context: context);

  @override
  void setUser(UserEntity item) {
    final _$actionInfo = _$UserSMStoreBaseActionController.startAction(
        name: 'UserSMStoreBase.setUser');
    try {
      return super.setUser(item);
    } finally {
      _$UserSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user}
    ''';
  }
}
