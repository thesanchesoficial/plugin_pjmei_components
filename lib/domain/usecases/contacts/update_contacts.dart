import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class UpdateContact {
  Future<ContactEntity> exec(ContactEntity params);
}
