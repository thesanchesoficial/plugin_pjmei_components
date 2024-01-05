import 'package:mobx/mobx.dart';

import '../domain/entity/user_entity.dart';
part 'user_sm.g.dart';

class UserSMStore = UserSMStoreBase with _$UserSMStore;

abstract class UserSMStoreBase with Store {

  @observable
  UserEntity? user;

  @action
  void setUser(UserEntity item) {
    user = item;
  }
}
