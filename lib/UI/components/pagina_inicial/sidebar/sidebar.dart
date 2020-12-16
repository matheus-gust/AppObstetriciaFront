import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:obstetricia/UI/components/formularios/formularios.dart';
import 'package:obstetricia/UI/components/pagina_inicial/sidebar/shared/model/FormApi.model.dart';
import 'package:obstetricia/UI/components/pagina_inicial/sidebar/shared/service/sidebar.service.dart';
import 'package:obstetricia/shared/servidor.service.dart';

class Sidebar extends StatefulWidget {
  @override
  _SidebarState createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  SidebarService sidebarService;
  @override
  void initState() {
    super.initState();
    sidebarService = SidebarService();
    sidebarService.chamadaFormularios();
  }

  @override
  Widget build(BuildContext context) {
    double statusBarPadding = MediaQuery.of(context).padding.top;
    return Drawer(
        child: Container(
            color: Color.fromARGB(255, 255, 70, 70),
            child: Observer(
                name: "ListaFormularios",
                builder: (BuildContext context) {
                  FormApi _formApi = sidebarService.formApi;
                  return (_formApi != null)
                      ? ListView.builder(
                          itemCount: _formApi.formularios.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  top: 30.0, left: 5.0, right: 5.0),
                              child: GestureDetector(
                                child: Container(
                                height: 70,
                                color: Colors.white70,
                                  child: Center(
                                      child: Text(
                                    _formApi.formularios[index].dscricao,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25.0),
                                  )),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              FormularioWidget(formulario: _formApi.formularios[index])));
                                },
                              ),
                            );
                          }) : Center(
                          child: CircularProgressIndicator(
                            backgroundColor: Colors.white,
                          ),
                        );
                })));
  }
}
