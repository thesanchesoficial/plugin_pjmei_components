import '../entity/dasn_declaration_entity.dart';

abstract class PostDasnItem {
  Future<bool> exec(DasnDeclaration dasn, {bool log = false});
}
