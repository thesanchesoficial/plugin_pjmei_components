abstract class VerifyEmailCode {
  Future<String> exec({required String email, required String code, bool log = false});
}
