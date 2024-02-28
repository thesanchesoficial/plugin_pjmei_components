part of '../../../apis.dart';

class _WebSocketApi {

  WebSocketChannel connectWebSocketChannel() {
    return WebSocketChannel.connect(
      Uri.parse('wss://wsstg.pjmei.app'),
      protocols: ['${userSM.user?.accessToken}'],
    );
  }
}