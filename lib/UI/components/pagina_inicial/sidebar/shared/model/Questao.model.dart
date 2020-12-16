import 'package:obstetricia/UI/components/pagina_inicial/sidebar/shared/model/Alternativa.model.dart';

class Questoes {
  int id;
  String pergunta;
  List<Alternativa> respostas;

  Questoes({this.id, this.pergunta, this.respostas});

  Questoes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    pergunta = json['pergunta'];
    if (json['respostas'] != null) {
      respostas = new List<Alternativa>();
      json['respostas'].forEach((v) {
        respostas.add(new Alternativa.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['pergunta'] = this.pergunta;
    if (this.respostas != null) {
      data['respostas'] = this.respostas.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
