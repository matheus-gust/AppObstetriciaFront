import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:obstetricia/UI/boas_vindas.dart';
import 'package:obstetricia/UI/components/login/login.dart';
import 'package:obstetricia/UI/components/login/shared/service/login_Service.dart';
import 'package:obstetricia/UI/components/pagina_inicial/pagina_inicial.dart';
import 'package:obstetricia/UI/slide/slide.dart';
import 'package:obstetricia/UI/slide/sociodemograficos/dados_sociodemograficos.dart';
import 'package:obstetricia/UI/slide/sociodemograficos/service/dados_sociodemograficos.service.dart';
import 'package:scoped_model/scoped_model.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Obstetrícia",
      localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate
    ],
    supportedLocales: [const Locale('pt', 'BR')],
      theme: ThemeData(
          fontFamily: 'Bebas Neue',
          primarySwatch: Colors.pink,
          primaryColor: Color.fromARGB(255, 255,70,70)
      ),
      home: Login(),
    );
  }
}

