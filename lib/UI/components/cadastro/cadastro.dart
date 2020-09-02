import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:obstetricia/UI/components/cadastro/shared/model/NovoUsuarioDTO.dart';
import 'package:obstetricia/UI/components/cadastro/shared/service/cadastro_service.dart';
import 'package:obstetricia/UI/components/login/shared/service/login_Service.dart';
import 'package:scoped_model/scoped_model.dart';

class Cadastro extends StatelessWidget {
  final _nome = TextEditingController();
  final _email = TextEditingController();
  final _senha = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 100.0),
          child: ScopedModelDescendant<LoginService>(
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
                          validator: (text) {
                            if (text.isEmpty || !text.contains("@"))
                              return "Insira um email valido";
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                          controller: _email,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Senha',
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 255, 70, 70)),
                            icon: Icon(Icons.lock,
                                color: Color.fromARGB(255, 255, 70, 70)),
                          ),
                          validator: (text) {
                            if (text.isEmpty) return "Insira uma senha";
                            return null;
                          },
                          controller: _senha,
                          obscureText: true,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 30.0),
                            child: Container(
                              height: 50.0,
                              child: RaisedButton(
                                  color: Color.fromARGB(255, 255, 70, 7),
                                  onPressed: () async {
                                    if (_formKey.currentState.validate()) {
                                      NovoUsuarioDTO novoUsuario =
                                          NovoUsuarioDTO(
                                              email: _email.text,
                                              senha: _senha.text);
                                      NovoUsuarioDTO usuario =
                                          await model.cadastro(
                                              body: novoUsuario.toMap(),
                                              context: context);
                                      _senha.text = "";
                                    }
                                  },
                                  child: Text("Cadastro",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white))),
                            )),
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
