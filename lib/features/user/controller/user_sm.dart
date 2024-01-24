import 'package:mobx/mobx.dart';

import '../../plans/domain/entity/subscription_entity.dart';
import '../domain/entity/user_entity.dart';
part 'user_sm.g.dart';

class UserSMStore = UserSMStoreBase with _$UserSMStore;

abstract class UserSMStoreBase with Store {

  @observable
  UserEntity? user;

  @observable
  SubscriptionEntity? subscription;

  @action
  void setUser(UserEntity item) {
    user = item;
  }

  @action
  void setSubscription(SubscriptionEntity? item) {
    subscription = item;
  }
}
