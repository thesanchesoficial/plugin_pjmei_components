import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class AddContact {
  Future<ContactEntity> exec(ContactEntity params);
}
