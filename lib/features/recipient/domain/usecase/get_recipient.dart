import '../entity/recipient_entity.dart';

abstract class GetRecipient {
  Future<RecipientEntity> exec({bool log = false});
}
