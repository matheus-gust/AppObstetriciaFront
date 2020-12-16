import 'package:flutter/material.dart';
import 'package:obstetricia/UI/components/pagina_inicial/pagina_inicial.dart';
import 'package:obstetricia/UI/slide/sociodemograficos/model/dados.sociodemograficos.model.dart';
import 'package:obstetricia/UI/slide/sociodemograficos/service/dados_sociodemograficos.service.dart';
import 'package:scoped_model/scoped_model.dart';

class DadosSelect {
  int id;
  String label;

  DadosSelect({this.id, this.label});
}

class DadosSociodemograficos extends StatefulWidget {
  @override
  _DadosSociodemograficosState createState() => _DadosSociodemograficosState();
}

class _DadosSociodemograficosState extends State<DadosSociodemograficos> {
  final _formKeySociodemografico = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  DadosSociodemograficosService sociodemograficosService =
      new DadosSociodemograficosService();

  TextEditingController dateCtrl = TextEditingController();
  

  List<DadosSelect> _listaEscolaridade = [
    new DadosSelect(id: 0, label: 'Medio'),
    new DadosSelect(id: 1, label: 'Técnico'),
    new DadosSelect(id: 2, label: 'Superior'),
  ];
  List<DadosSelect> _listaEstadoCivil = [
    new DadosSelect(id: 0, label: 'Solteira'),
    new DadosSelect(id: 1, label: 'Casada'),
    new DadosSelect(id: 2, label: 'Separada'),
    new DadosSelect(id: 3, label: 'Divorciada'),
    new DadosSelect(id: 4, label: 'Viúva'),
  ];
  List<DadosSelect> _listaEtinia = [
    new DadosSelect(id: 0, label: 'Branco'),
    new DadosSelect(id: 1, label: 'Pardo'),
    new DadosSelect(id: 2, label: 'Negro'),
    new DadosSelect(id: 3, label: 'Indígena'),
    new DadosSelect(id: 4, label: 'Amarelo'),
  ];
  List<DadosSelect> _listaPlanoDeSaude = [
    new DadosSelect(id: 0, label: 'Publico'),
    new DadosSelect(id: 1, label: 'Privado'),
  ];
  List<int> _listaProfissao = [1, 2, 3, 4];

  DadosSociodemograficosModel _dadosSociodemograficos =
      new DadosSociodemograficosModel();

  @override
  Widget build(BuildContext context) {
    double statusBarPadding = MediaQuery.of(context).padding.top;

    return ScopedModel<DadosSociodemograficosService>(
        model: DadosSociodemograficosService(),
        child: Scaffold(
            key: _scaffoldKey,
            body: ScopedModelDescendant<DadosSociodemograficosService>(
                builder: (context, child, model) {
              if (model.carregando == true) {
                return Container(
                  width: double.infinity,
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(),
                      Text("Salvando os dados!")
                    ],
                  )),
                );
              }
              return Stack(children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 255, 70, 70),
                      Color.fromARGB(255, 200, 200, 200)
                    ],
                  )),
                ),
                SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(top: statusBarPadding, left: 10, right: 10, bottom: 10 ),
                        child: Container(
                            padding: EdgeInsets.only(bottom: 50),
                            color: Colors.white,
                            child: Form(
                              key: _formKeySociodemografico,
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30.0),
                                    child: Text(
                                      "Dados Sociodemograficos",
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(top: 30),
                                            child: Material(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: TextFormField(
                                                  validator: (value) {
                                                    if (value.isEmpty) {
                                                      return "Insira a data de nascimento!";
                                                    }
                                                    return null;
                                                  },
                                                  style:
                                                      TextStyle(fontSize: 20),
                                                  decoration: InputDecoration(
                                                    labelText: 'Nascimento',
                                                    labelStyle: TextStyle(
                                                        color: Colors.black),
                                                    icon: Icon(
                                                        Icons.calendar_today,
                                                        color: Colors.pink),
                                                  ),
                                                  controller: dateCtrl,
                                                  onTap: () async {
                                                    var data = [];
                                                    DateTime date;
                                                    FocusScope.of(context)
                                                        .requestFocus(
                                                            new FocusNode());
                                                    date = await showDatePicker(
                                                        locale: Locale('pt'),
                                                        context: context,
                                                        initialDate:
                                                            DateTime.now(),
                                                        firstDate:
                                                            DateTime(1945),
                                                        lastDate:
                                                            DateTime(2100));
                                                    if (date != null) {
                                                      data = date
                                                          .toString()
                                                          .split("-");
                                                      data[2] = data[2]
                                                          .toString()
                                                          .split(" ")[0];
                                                      dateCtrl.text = data[2] +
                                                          "/" +
                                                          data[1] +
                                                          "/" +
                                                          data[0];
                                                    }
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 20),
                                            child: Material(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.school,
                                                      color: Colors.pink,
                                                      size: 24.0,
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 15.0),
                                                        child:
                                                            DropdownButtonFormField<dynamic>(
                                                          isExpanded: true,
                                                          hint: Text(
                                                            'Escolaridade',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 20),
                                                          ),
                                                          validator: (value) => (value == null || value == '') ? "Insira a escolaridade!" : null,
                                                          value:
                                                              _dadosSociodemograficos
                                                                  .escolaridade,
                                                          onChanged:
                                                              (newValue) {
                                                            setState(() {
                                                              _dadosSociodemograficos
                                                                      .escolaridade =
                                                                  newValue;
                                                            });
                                                          },
                                                          items:
                                                              _listaEscolaridade
                                                                  .map(
                                                                      (location) {
                                                            return DropdownMenuItem(
                                                              child: new Text(
                                                                  location
                                                                      .label),
                                                              value:
                                                                  location.id,
                                                            );
                                                          }).toList(),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 20),
                                            child: Material(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.favorite,
                                                      color: Colors.pink,
                                                      size: 24.0,
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 15.0),
                                                        child: DropdownButtonFormField(
                                                          isExpanded: true,
                                                          hint: Text(
                                                            'Estado Civil',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 20),
                                                          ),
                                                          value:
                                                              _dadosSociodemograficos
                                                                  .estadoCivil,
                                                          validator: (value) => (value == null || value == '') ? "Insira o estado civil!" : null,
                                                          onChanged:
                                                              (newValue) {
                                                            setState(() {
                                                              _dadosSociodemograficos
                                                                      .estadoCivil =
                                                                  newValue;
                                                            });
                                                          },
                                                          items: _listaEstadoCivil
                                                              .map((location) {
                                                            return DropdownMenuItem(
                                                              child: new Text(
                                                                  location
                                                                      .label),
                                                              value:
                                                                  location.id,
                                                            );
                                                          }).toList(),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 20),
                                            child: Material(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.people,
                                                      color: Colors.pink,
                                                      size: 24.0,
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 15.0),
                                                        child: DropdownButtonFormField(
                                                          isExpanded: true,
                                                          hint: Text(
                                                            'Etnia',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 20),
                                                          ),
                                                          value:
                                                              _dadosSociodemograficos
                                                                  .etnia,
                                                          validator: (value) => (value == null || value == '') ? "Insira a etnia!" : null,
                                                          onChanged:
                                                              (newValue) {
                                                            setState(() {
                                                              _dadosSociodemograficos
                                                                      .etnia =
                                                                  newValue;
                                                            });
                                                          },
                                                          items: _listaEtinia
                                                              .map((location) {
                                                            return DropdownMenuItem(
                                                              child: new Text(
                                                                  location
                                                                      .label),
                                                              value:
                                                                  location.id,
                                                            );
                                                          }).toList(),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 20),
                                            child: Material(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.work,
                                                      color: Colors.pink,
                                                      size: 24.0,
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 15.0),
                                                        child: DropdownButtonFormField(
                                                          isExpanded: true,
                                                          hint: Text(
                                                            'Profissão',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 20),
                                                          ),
                                                          value:
                                                              _dadosSociodemograficos
                                                                  .profissao,
                                                          validator: (value) => (value == null || value == '') ? "Insira a prifissão!" : null,
                                                          onChanged:
                                                              (newValue) {
                                                            setState(() {
                                                              _dadosSociodemograficos
                                                                      .profissao =
                                                                  newValue;
                                                            });
                                                          },
                                                          items: _listaProfissao
                                                              .map((location) {
                                                            return DropdownMenuItem(
                                                              child: new Text(
                                                                  location
                                                                      .toString()),
                                                              value: location,
                                                            );
                                                          }).toList(),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 20),
                                            child: Material(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.local_hospital,
                                                      color: Colors.pink,
                                                      size: 24.0,
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 15.0),
                                                        child: DropdownButtonFormField(
                                                          isExpanded: true,
                                                          hint: Text(
                                                            'Plano de Saude',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 20),
                                                          ),
                                                          value:
                                                              _dadosSociodemograficos
                                                                  .planoDeSaude,
                                                          validator: (value) => (value == null || value == '') ? "Insira o plano de saude!" : null,
                                                          onChanged:
                                                              (newValue) {
                                                            setState(() {
                                                              _dadosSociodemograficos
                                                                      .planoDeSaude =
                                                                  newValue;
                                                            });
                                                          },
                                                          items:
                                                              _listaPlanoDeSaude
                                                                  .map(
                                                                      (location) {
                                                            return DropdownMenuItem(
                                                              child: new Text(
                                                                  location
                                                                      .label),
                                                              value:
                                                                  location.id,
                                                            );
                                                          }).toList(),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Container(
                                      height: 50.0,
                                      child: RaisedButton(
                                          color:
                                              Color.fromARGB(255, 255, 70, 70),
                                          onPressed: () async {
                                            if (_formKeySociodemografico
                                                .currentState
                                                .validate()) {
                                              _dadosSociodemograficos
                                                      .dataNascimento =
                                                  dateCtrl.text;
                                              await model
                                                  .cadastrarDadosSociodemograficos(
                                                      dados:
                                                          _dadosSociodemograficos
                                                              .toMap(),
                                                      context: context,
                                                      scaffoldKey:
                                                          _scaffoldKey);
                                            }
                                          },
                                          child: Text("Salvar",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white))),
                                    ),
                                  ),
                                ],
                              ),
                            ))))
              ]);
            })));
  }
}
