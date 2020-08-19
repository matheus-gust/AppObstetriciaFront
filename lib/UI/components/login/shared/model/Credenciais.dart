class Credenciais {
  final String email;
  final String senha;
  final String id;

  Credenciais({this.email, this.senha, this.id});

  factory Credenciais.fromJson(Map<String, dynamic> json) {
    return Credenciais(
      email: json['email'],
      id: json['nome']
    );
  }

  Map toMap() {
    var map = new Map<String, dynamic>();
    map["email"] = email;
    map["senha"] = senha;

    return map;
  }
}
