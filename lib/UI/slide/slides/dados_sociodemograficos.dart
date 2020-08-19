import 'package:flutter/material.dart';
import 'package:obstetricia/UI/components/pagina_inicial/pagina_inicial.dart';

class DadosSociodemograficos extends StatefulWidget {
  @override
  _DadosSociodemograficosState createState() => _DadosSociodemograficosState();
}

class _DadosSociodemograficosState extends State<DadosSociodemograficos> {
  TextEditingController dateCtrl = TextEditingController();

  List<String> _listaEscolaridade = ['Medio', 'Tecnico', 'Superior'];
  List<String> _listaEstadoCivil = ['Solteira(o)', 'Casada(o)', 'Separada(o)', 'Divorciada(o), Viúva(o)'];
  List<String> _listaEtinia = ['Branco', 'Pardo', 'Negro', 'Indígena', 'Amarelo'];
  List<String> _listaPlanoDeSaude = ['Publico', 'Privado'];
  List<String> _listaProfissao = ['A', 'B', 'C', 'D'];

  String _nascimento = '';
  String _escolaridade;
  String _estadoCivil;
  String _etnia;
  String _planoDeSaude;
  String _profissao;

  @override
  Widget build(BuildContext context) {
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
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          color: Colors.white,
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
                            padding: const EdgeInsets.only(left: 8.0),
                            child: TextFormField(
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                labelText: 'Nascimento',
                                labelStyle: TextStyle(color: Colors.black),
                                icon: Icon(Icons.calendar_today,
                                    color: Colors.pink),
                              ),
                              controller: dateCtrl,
                              onTap: () async {
                                var data = [];
                                DateTime date;
                                FocusScope.of(context)
                                    .requestFocus(new FocusNode());
                                date = await showDatePicker(
                                    locale: Locale('pt'),
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1945),
                                    lastDate: DateTime(2100));
                                if (date != null) {
                                  data = date.toString().split("-");
                                  data[2] = data[2].toString().split(" ")[0];
                                  dateCtrl.text =
                                      data[2] + "/" + data[1] + "/" + data[0];
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
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.school,
                                  color: Colors.pink,
                                  size: 24.0,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: DropdownButton(
                                      isExpanded: true,
                                      hint: Text(
                                        'Escolaridade',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20),
                                      ),
                                      value: _escolaridade,
                                      onChanged: (newValue) {
                                        setState(() {
                                          _escolaridade = newValue;
                                        });
                                      },
                                      items: _listaEscolaridade.map((location) {
                                        return DropdownMenuItem(
                                          child: new Text(location),
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
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.favorite,
                                  color: Colors.pink,
                                  size: 24.0,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: DropdownButton(
                                      isExpanded: true,
                                      hint: Text(
                                        'Estado Civil',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20),
                                      ),
                                      value: _estadoCivil,
                                      onChanged: (newValue) {
                                        setState(() {
                                          _estadoCivil = newValue;
                                        });
                                      },
                                      items: _listaEstadoCivil.map((location) {
                                        return DropdownMenuItem(
                                          child: new Text(location),
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
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.people,
                                  color: Colors.pink,
                                  size: 24.0,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: DropdownButton(
                                      isExpanded: true,
                                      hint: Text(
                                        'Etinia',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20),
                                      ),
                                      value: _etnia,
                                      onChanged: (newValue) {
                                        setState(() {
                                          _etnia = newValue;
                                        });
                                      },
                                      items: _listaEtinia.map((location) {
                                        return DropdownMenuItem(
                                          child: new Text(location),
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
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.work,
                                  color: Colors.pink,
                                  size: 24.0,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: DropdownButton(
                                      isExpanded: true,
                                      hint: Text(
                                        'Profissão',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20),
                                      ),
                                      value: _profissao,
                                      onChanged: (newValue) {
                                        setState(() {
                                          _profissao = newValue;
                                        });
                                      },
                                      items: _listaProfissao.map((location) {
                                        return DropdownMenuItem(
                                          child: new Text(location),
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
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.local_hospital,
                                  color: Colors.pink,
                                  size: 24.0,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: DropdownButton(
                                      isExpanded: true,
                                      hint: Text(
                                        'Plano de Saude',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20),
                                      ),
                                      value: _planoDeSaude,
                                      onChanged: (newValue) {
                                        setState(() {
                                          _planoDeSaude = newValue;
                                        });
                                      },
                                      items: _listaPlanoDeSaude.map((location) {
                                        return DropdownMenuItem(
                                          child: new Text(location),
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
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  height: 50.0,
                  child: RaisedButton(
                      color: Color.fromARGB(255, 255, 70, 70),
                      onPressed: () async {
                         Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    PaginaInicial()));
                      },
                      child: Text("Salvar",
                          style: TextStyle(fontSize: 20, color: Colors.white))),
                ),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
