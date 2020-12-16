class BoasVindasModel {
  bool cadastroFinalizado;

  BoasVindasModel({this.cadastroFinalizado});

   BoasVindasModel.fromJson(Map<String, dynamic> json) {
    cadastroFinalizado = json['cadastroFinalizado'];
  }
}