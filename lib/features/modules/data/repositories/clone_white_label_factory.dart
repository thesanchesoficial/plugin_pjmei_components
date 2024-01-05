import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/clone_white_label.dart';
import '../usecase/remote_clone_white_label.dart';

ClonarWhiteLabel makeRemoteClonarWhiteLabel() => RemoteClonarWhiteLabel(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/module/clone/white-label'),
);
