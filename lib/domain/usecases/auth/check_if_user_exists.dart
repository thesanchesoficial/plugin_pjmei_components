abstract class CheckIfUserExists {
  Future<CheckIfUserExistsParams> exec({bool log = false});
}

class CheckIfUserExistsParams {
  CheckIfUserExistsParams({
    required this.email,
    required this.nome,
  });
  String email;
  String nome;
}
