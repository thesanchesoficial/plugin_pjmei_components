abstract class RefreshToken {
  Future<RefreshTokenEntity> exec({bool log = false});
}

class RefreshTokenEntity {
  String accessToken;
  String refreshToken;
  RefreshTokenEntity({
    required this.accessToken,
    required this.refreshToken,
  });
}
