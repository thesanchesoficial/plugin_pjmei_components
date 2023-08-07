import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class UpdatePageBio {
  Future<PageBioEntity> exec(PageBioEntity params, {bool log = false});
}
