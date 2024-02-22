abstract class SendNotification {
  Future<bool> exec({required String type, List<String>? ids, bool log = false});
}