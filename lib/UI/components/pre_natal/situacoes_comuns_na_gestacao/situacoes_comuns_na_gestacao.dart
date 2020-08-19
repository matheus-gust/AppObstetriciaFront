import 'package:flutter/material.dart';
import 'package:obstetricia/UI/components/shared/widget-de-textos-personalizaveis.dart';
import 'package:obstetricia/shared/convencoes.dart';

class SituacoesComunsNaGestacao extends StatefulWidget {
  @override
  _SituacoesComunsNaGestacaoState createState() =>
      _SituacoesComunsNaGestacaoState();
}

class _SituacoesComunsNaGestacaoState extends State<SituacoesComunsNaGestacao> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.white,
        ),
        CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            floating: true,
            snap: true,
            backgroundColor: Colors.pink,
            elevation: 0.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text("Situações Comuns na Gestação"),
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
                                  texto: Text("Situações comuns na Gestação",
                                      style:
                                          TextStyle(fontSize: fontSizeTitulo)),
                                  padding: paddingTitulo),
                              WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Gengivite (sangramento da gengiva)",
                                  style: TextStyle(fontSize: fontSizeSubtitulo),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingSubTitulo,
                              ),
                              WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Pode ocorrer mais facilmente durante a gestação, por causa da variação dos níveis hormonais. Por isso, adote um hábito diário de cuidados com sua saúde bucal.",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingTopico,
                              ),

                              WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Enjoos e Vômitos",
                                  style: TextStyle(fontSize: fontSizeSubtitulo),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingSubTitulo,
                              ),

                              WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "São comuns nos primeiros meses de gravidez. Evite ficar muito tempo sem se alimentar e escolha alimentos mais secos (bolachas de água e sal, pão) ou frutas, de acordo com seu desejo. Caso vomite, faça apenas bochecho com água e aguarde meia hora para escovar os dentes.",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingTopico,
                              ),

                               WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Azia e Queimação",
                                  style: TextStyle(fontSize: fontSizeSubtitulo),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingSubTitulo,
                              ),

                               WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Evite beber líquidos junto com a refeição e se deitar após as principais refeições. Coma mais vezes e em menor quantidade de cada vez.",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingTopico,
                              ),

                              WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Cãibras e formigamentos nas pernas",
                                  style: TextStyle(fontSize: fontSizeSubtitulo),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingSubTitulo,
                              ),

                               WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Modere a atividade física, tome muita água, suco de frutas e coma bananas, que são ricas em potássio. Você pode também aquecer e massagear as pernas.",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingTopico,
                              ),

                              WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Varizes nas pernas",
                                  style: TextStyle(fontSize: fontSizeSubtitulo),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingSubTitulo,
                              ),

                              WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Não fique muito tempo em pé ou sentada. A cada duas horas procure ficar com as pernas levantadas.",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingTopico,
                              ),

                              WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Intestino preso ",
                                  style: TextStyle(fontSize: fontSizeSubtitulo),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingSubTitulo,
                              ),

                              WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "É comum na gravidez. É recomendável comer alimentos integrais ricos em fibras (pão e arroz integrais, granola, linhaça), folhas verdes (alface, couve, taioba, bertalha, ora-pro-nóbis, mostarda, serralha, beldroega) e frutas (mamão, laranja com o bagaço, ameixa preta, tamarindo). Evite queijos, farinhas brancas (não integrais) e frutas como caju e goiaba. Você deve também beber muita água e fazer atividade física regularmente.",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingTopico,
                              ),

                              WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Dor na coluna e dor na barriga",
                                  style: TextStyle(fontSize: fontSizeSubtitulo),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingSubTitulo,
                              ),

                               WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Evite carregar peso e diminua o serviço doméstico, como lavar roupa e limpar o chão. Você pode também se espreguiçar para esticar a coluna.",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingTopico,
                              ),

                               WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Hemorroidas (varizes na região anal, que podem sangrar)",
                                  style: TextStyle(fontSize: fontSizeSubtitulo),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingSubTitulo,
                              ),

                               WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Faça banhos de assento com água morna. Evite usar papel higiênico. Dê preferência à água com sabão e enxugue sempre com uma toalha macia.",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingTopico,
                              ),

                              WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Dor ao Urinar",
                                  style: TextStyle(fontSize: fontSizeSubtitulo),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingSubTitulo,
                              ),

                              WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Se você sentir dor ou queimação na hora de fazer xixi, pode ser uma infecção urinária. Neste caso, procure a Unidade Básica de Saúde.",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingTopico,
                              ),

                              WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "Aumento da secreção vaginal (corrimento) ",
                                  style: TextStyle(fontSize: fontSizeSubtitulo),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingSubTitulo,
                              ),

                              WidgetDeTextosPersonalizaveis(
                                texto: Text(
                                  "É comum na gestação. Se houver outras características, como coceira, ardor, cheiro forte, cor estranha, procure a Unidade Básica de Saúde, pois pode tratar-se de uma infecção sexualmente transmissível (IST).",
                                  style: TextStyle(fontSize: fontSize),
                                  textAlign: TextAlign.justify,
                                ),
                                padding: paddingTopico,
                              ),
                            ]))))
          ]))
        ])
      ],
    );
  }
}
