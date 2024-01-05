import '../entity/contact_entity.dart';

abstract class ListContacts {
  Future<List<ContactEntity>> exec({bool log = false});
}
