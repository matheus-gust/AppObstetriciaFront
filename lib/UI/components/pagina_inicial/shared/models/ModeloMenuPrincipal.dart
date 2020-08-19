class ModeloMenuPrincipal {
    int id;
    int colunas;
    int linhas;
    String tagHero;
    String titulo;
    String cor;

    ModeloMenuPrincipal({this.colunas, this.id, this.linhas, this.cor, this.titulo, this.tagHero});

    ModeloMenuPrincipal.fromJson(Map<String, dynamic> json) {
      id = json['id'];
      colunas = json['colunas'];
      linhas = json['linhas'];
      tagHero = json['tagHero'];
      titulo = json['titulo'];
      cor = json['cor'];
    }

    Map<String, dynamic> toJson() {
      final Map<String, dynamic> data = new Map<String, dynamic>();
      data['id'] = this.id;
      data['colunas'] = this.colunas;
      data['linhas'] = this.linhas;
      data['tagHero'] = this.tagHero;
      data['titulo'] = this.titulo;
      data['cor'] = this.cor;
      return data;
    }
  
}