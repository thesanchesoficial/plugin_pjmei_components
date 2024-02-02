import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/get_list_chat_default.dart';
import '../usecase/remote_get_list_chat_default.dart';

GetListChatDefault makeRemoteGetListChatDefault() => RemoteGetListChatDefault(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/chat/default'),
);
