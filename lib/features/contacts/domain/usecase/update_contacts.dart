import '../entity/contact_entity.dart';

abstract class UpdateContact {
  Future<ContactEntity> exec(ContactEntity params, {bool log = false});
}
