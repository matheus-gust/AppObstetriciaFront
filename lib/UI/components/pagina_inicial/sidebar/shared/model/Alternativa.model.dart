class Alternativa {
  int id;
  String resposta;

  Alternativa({this.id, this.resposta});

  Alternativa.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    resposta = json['resposta'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['resposta'] = this.resposta;
    return data;
  }
}