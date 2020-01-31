import 'package:flutter/material.dart';
import 'package:obstetricia/UI/boas_vindas.dart';
import 'package:obstetricia/UI/cadastro.dart';
import 'package:obstetricia/UI/login.dart';
import 'package:obstetricia/models/user_model.dart';
import 'package:scoped_model/scoped_model.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScopedModel<UserModel>(
      model: UserModel(),
      child: MaterialApp(
        title: "Obstetrícia",
        theme: ThemeData(
            fontFamily: 'Bebas Neue',
            primarySwatch: Colors.pink,
            primaryColor: Color.fromARGB(255, 255,70,70)
        ),
        home: Login(),
      ),
    );
  }
}

