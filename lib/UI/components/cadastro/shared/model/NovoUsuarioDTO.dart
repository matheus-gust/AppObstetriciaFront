class NovoUsuarioDTO {
  final String nome;
  final String email;
  final String senha;

  NovoUsuarioDTO({this.nome, this.email, this.senha});

  Map toMap() {
    var map = new Map<String, dynamic>();
    map["email"] = email;
    map["senha"] = senha;
    map["nome"] = nome;

    return map;
  }
}
