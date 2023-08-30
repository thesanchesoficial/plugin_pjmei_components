abstract class CheckIfUserExists {
  Future<CheckIfUserExistsParams> exec({bool log = false});
}

class CheckIfUserExistsParams {
  CheckIfUserExistsParams({
    required this.email,
    required this.name,
  });
  String email;
  String name;
}
