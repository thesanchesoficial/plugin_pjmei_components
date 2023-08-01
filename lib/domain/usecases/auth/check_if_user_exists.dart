
abstract class CheckIfUserExists {
  Future<CheckIfUserExistsParams> exec();
}

class CheckIfUserExistsParams {

  CheckIfUserExistsParams({
    required this.email,
    required this.nome,
  });
  String email;
  String nome;
}
