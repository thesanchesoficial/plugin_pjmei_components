import '../entity/contact_entity.dart';

abstract class AddContact {
  Future<ContactEntity> exec(ContactEntity params, {bool log = false});
}
