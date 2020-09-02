class NovoUsuarioDTO {
  final String email;
  final String senha;

  NovoUsuarioDTO({this.email, this.senha});

  Map toMap() {
    var map = new Map<String, dynamic>();
    map["email"] = email;
    map["senha"] = senha;

    return map;
  }
}
