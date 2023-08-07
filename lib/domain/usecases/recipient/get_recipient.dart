import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class GetRecipient {
  Future<RecipientEntity> exec({bool log = false});
}
