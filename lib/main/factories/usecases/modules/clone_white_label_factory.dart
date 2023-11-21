import 'package:plugin_pjmei_components/data/usecases/modules/remote_clone_white_label.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ClonarWhiteLabel makeRemoteClonarWhiteLabel() => RemoteClonarWhiteLabel(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/module/clone/white-label'),
);
