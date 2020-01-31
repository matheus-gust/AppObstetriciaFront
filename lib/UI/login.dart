import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:obstetricia/UI/boas_vindas.dart';
import 'package:obstetricia/UI/cadastro.dart';
import 'package:obstetricia/models/Credenciais.dart';
import 'package:obstetricia/models/user_model.dart';
import 'package:scoped_model/scoped_model.dart';

class Login extends StatelessWidget {
  final _email = TextEditingController();
  final _senha = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrar"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 100.0),
          child: ScopedModelDescendant<UserModel>(
              builder: (context, child, model) {
            if (model.isLoading) {
              return Center(child: CircularProgressIndicator());
            }
            return Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 255, 70, 70)),
                            icon: Icon(Icons.mail,
                                color: Color.fromARGB(255, 255, 70, 70)),
                          ),
                          controller: _email,
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Insira seu Email!";
                            }
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Senha',
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 255, 70, 70)),
                            icon: Icon(Icons.lock,
                                color: Color.fromARGB(255, 255, 70, 70)),
                          ),
                          obscureText: true,
                          controller: _senha,
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Insira sua Senha!";
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        GestureDetector(
                            onTap: () {},
                            child: Text("Esqueci a senha",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 70, 70),
                                    fontSize: 18.0),
                                textAlign: TextAlign.end)),
                        Padding(
                            padding: EdgeInsets.only(top: 30.0),
                            child: Container(
                              height: 50.0,
                              child: RaisedButton(
                                  color: Color.fromARGB(255, 255, 70, 70),
                                  onPressed: () async {
                                    if (_formKey.currentState.validate()) {
                                      Credenciais usuario = new Credenciais(
                                          email: _email.text,
                                          senha: _senha.text);
                                      Credenciais user = await model.login(
                                          body: usuario.toMap(), context: context);
                                      if (model.logado == true) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    BoasVindas()));
                                      }
                                    }
                                    _senha.text = "";
                                  },
                                  child: Text("Acessar",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white))),
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: 40.0, bottom: 40.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Ink(
                                    decoration: const ShapeDecoration(
                                      color: Colors.transparent,
                                      shape: CircleBorder(
                                          side: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 255, 70, 70))),
                                    ),
                                    child: Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: IconButton(
                                          icon: Icon(Icons.android),
                                          color:
                                              Color.fromARGB(255, 255, 70, 70),
                                          onPressed: () {},
                                        ))),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Ink(
                                    decoration: const ShapeDecoration(
                                      color: Colors.transparent,
                                      shape: CircleBorder(
                                          side: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 255, 70, 70))),
                                    ),
                                    child: Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: IconButton(
                                          icon: Icon(Icons.android),
                                          color:
                                              Color.fromARGB(255, 255, 70, 70),
                                          onPressed: () {},
                                        ))),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Ink(
                                    decoration: const ShapeDecoration(
                                      color: Colors.transparent,
                                      shape: CircleBorder(
                                          side: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 255, 70, 70))),
                                    ),
                                    child: Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: IconButton(
                                          icon: Icon(Icons.android),
                                          color:
                                              Color.fromARGB(255, 255, 70, 70),
                                          onPressed: () {},
                                        ))),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Cadastro()));
                            },
                            child: Text("Fazer cadastro",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 70, 70),
                                    fontSize: 18.0),
                                textAlign: TextAlign.center)),
                      ],
                    ),
                  )
                ],
              ),
            );
          })),
    );
  }
}