import 'package:flutter/Material.dart';
import 'package:obstetricia/UI/components/shared/widget-de-textos-personalizaveis.dart';
import 'package:obstetricia/shared/convencoes.dart';

class AmamentacaoIntroducao extends StatefulWidget {
  @override
  _AmamentacaoIntroducaoState createState() => _AmamentacaoIntroducaoState();
}

class _AmamentacaoIntroducaoState extends State<AmamentacaoIntroducao> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        color: Colors.white,
      ),
      CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          floating: true,
          snap: true,
          backgroundColor: Colors.green,
          elevation: 0.0,
          flexibleSpace: FlexibleSpaceBar(
            title: const Text("Amamentação",
                style: TextStyle(fontSize: 20, color: Colors.white)),
            centerTitle: true,
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          Padding(
              padding: EdgeInsets.all(10),
              child: Material(
                  borderRadius: BorderRadius.circular(6),
                  elevation: 2.0,
                  child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Amamentação",
                                  style: TextStyle(fontSize: fontSizeTitulo),
                                ),
                                padding: paddingTitulo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "O leite humano é totalmente adequado às necessidades nutricionais do lactente. Assim, proporciona crescimento e desenvolvimento saudáveis do recém-nascido, bem como na redução de doenças, com repercussões inclusive na vida adulta. Constitui-se na ferramenta mais acessível, eficaz e econômica como medida de prevenção e intervenção na mortalidade e morbidade infantil, com grande impacto na promoção da saúde integral da criança.",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingParagrafo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Também, no que se refere à saúde da mulher, o ato de amamentar possibilita benefícios imediatos, por estimular a contratilidade uterina e reduzir o estresse pós-parto, além de benefícios mais tardios, como maior tempo de ausencia de menstruação, contracepção natural, espaçamento entre as gestações, redução de risco para o câncer de mama, ovário e endométrio.",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingParagrafo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "No Puerpério, durante o período de internação, deve ser fornecido à puérpera um Alojamento Conjunto entre mãe e filho (aumenta o laço afetivo), e uma Monitorização das Primeiras Mamadas, a fim de esclarecer dúvidas a respeito dos tipos de leite e ensinar/reforçar a técnica correta do posicionamento: ",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingParagrafo),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Rosto do bebê de frente para a mama, com nariz na altura do mamilo;",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Corpo do recém-nascido próximo ao da mãe;",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Bebê com a cabeça e tronco alinhados;",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingTopico),
                            WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Bebê bem apoiado e da pega (1. Mais aréola visível acima da boca do neonato que embaixo; 2. Boca bem aberta; 3. Lábio inferior virado para fora; 4. Queixo tocando a mama).",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingTopico),
                          ]))))
        ]))
      ])
    ]);
  }
}
