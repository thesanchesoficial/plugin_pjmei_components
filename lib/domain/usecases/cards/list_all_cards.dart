import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class ListAllCards {
  Future<List<CardEntity>> exec({bool log = false});
}
