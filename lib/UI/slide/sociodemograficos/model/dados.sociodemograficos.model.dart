class DadosSociodemograficosModel {
  String dataNascimento; 
  int escolaridade;
  int estadoCivil;
  int etnia;
  int profissao;
  int planoDeSaude;

  DadosSociodemograficosModel({this.dataNascimento, this.escolaridade, this.estadoCivil, this.etnia, this.profissao, this.planoDeSaude});

  factory DadosSociodemograficosModel.fromJson(Map<String, dynamic> json) {
    return DadosSociodemograficosModel(
      dataNascimento: json['dataNascimento'],
      escolaridade: json['escolaridade'],
      estadoCivil: json['estadoCivil'],
      etnia: json['profissao'],
      planoDeSaude: json['planoDeSaude']
    );
  }

  Map toMap() {
    var map = new Map<String, dynamic>();
    map["dataNascimento"] = dataNascimento;
    map["escolaridade"] = escolaridade;
    map["estadoCivil"] = estadoCivil;
    map["etnia"] = etnia;
    map["planoDeSaude"] = planoDeSaude;

    return map;
  }

}