import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:obstetricia/UI/boas_vindas.service.dart';
import 'package:obstetricia/UI/slide/sociodemograficos/dados_sociodemograficos.dart';
import 'package:scoped_model/scoped_model.dart';

class BoasVindas extends StatefulWidget {
  @override
  _BoasVindasScreen createState() => _BoasVindasScreen();
}

class _BoasVindasScreen extends State<BoasVindas>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  AnimationController infoController;
  Animation<double> infoAnimation;

  bool _aberto = false;
  bool bemVindoAnimation = false;
  double _opacidadeBoasVindas = 0;
  double _width = 75;
  double _continuarOpacidade = 0;
  double _opcaoOpacidade = 0;

  String _initText = "Bem vindo(a)";

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    animation = Tween(begin: 0.0, end: 3.0).animate(controller);
    controller.forward();

    setBemVindoAnimatin();
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModel<BoasVindasService>(
      model: BoasVindasService(),
      child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 255, 70, 70),
              Color.fromARGB(255, 200, 200, 200)
            ],
          )),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              continuar(context),
              boasVindas(context),
            ],
          )),
    );
  }

  Widget boasVindas(BuildContext context) {
    return AnimatedPositioned(
        duration: Duration(milliseconds: 250),
        top: bemVindoAnimation ? 0 : 0,
        bottom: bemVindoAnimation ? 200 : 0,
        child: Row(
          children: <Widget>[
            AnimatedContainer(
                alignment: Alignment.center,
                duration: Duration(milliseconds: 250),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    color: _aberto
                        ? Colors.transparent
                        : Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(
                        width: 3, color: Color.fromARGB(255, 255, 255, 255))),
                height: 75,
                width: _width,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 500),
                  opacity: _opacidadeBoasVindas,
                  child: Text(
                    _initText,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 30,
                        fontFamily: 'Bebas Neue'),
                  ),
                ))
          ],
        ));
  }

  Widget continuar(BuildContext context) {
    return AnimatedOpacity(
      opacity: _continuarOpacidade,
      duration: Duration(milliseconds: 500),
      child: ScopedModelDescendant<BoasVindasService>(
        builder: (context, child, model) {
          model.verificarRegistros();
          if (model.carregando == true) {
            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(),
                Text("Carregando!")
              ],
            ));
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Text(
                  "Antes de prosseguir vamos precisar de algumas informações!",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 20,
                    fontFamily: 'Bebas Neue',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                child: AnimatedOpacity(
                  opacity: _opcaoOpacidade,
                  duration: Duration(milliseconds: 1000),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                          child: Text("Continuar",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black)),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        DadosSociodemograficos()));
                          }),
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }

  void setBemVindoAnimatin() async {
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      _opacidadeBoasVindas = 1.0;
      _width = 250;
      _aberto = true;
    });

    await Future.delayed(Duration(seconds: 3));
    setState(() {
      _opacidadeBoasVindas = 0;
      _width = 75;
      _initText = "";
      _aberto = false;
    });

    await Future.delayed(Duration(seconds: 1));

    setState(() {
      _initText = "Obstetrícia";
      _opacidadeBoasVindas = 1.0;
      _width = 250;
      _aberto = true;
    });

    await Future.delayed(Duration(seconds: 3));
    setState(() {
      bemVindoAnimation = true;
    });

    await Future.delayed(Duration(seconds: 1));

    setContinuar();
  }

  setContinuar() {
    setState(() {
      _continuarOpacidade = 1.0;
      _opcaoOpacidade = 1.0;
    });
  }
}
