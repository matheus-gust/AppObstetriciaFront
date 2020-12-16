import 'package:obstetricia/UI/components/pagina_inicial/sidebar/shared/model/Questao.model.dart';

class Formulario {
  int id;
  List<Questoes> questoes;
  String dscricao;

  Formulario({this.id, this.questoes, this.dscricao});

  Formulario.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['questoes'] != null) {
      questoes = new List<Questoes>();
      json['questoes'].forEach((v) {
        questoes.add(new Questoes.fromJson(v));
      });
    }
    dscricao = json['dscricao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.questoes != null) {
      data['questoes'] = this.questoes.map((v) => v.toJson()).toList();
    }
    data['dscricao'] = this.dscricao;
    return data;
  }
}
