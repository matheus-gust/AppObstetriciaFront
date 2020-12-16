class Resposta {
  int id;
	int usuario;
	int alternativa;

  Resposta({this.id, this.usuario, this.alternativa});

    Resposta.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    usuario = json['usuario'];
    alternativa = json['alternativa'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['usuario'] = this.usuario;
    data['alternativa'] = this.alternativa;

    return data;
  }
}
	