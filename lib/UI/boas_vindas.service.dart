import 'dart:ffi';

import 'package:http/http.dart' as http;
import 'package:obstetricia/shared/servidor.service.dart';
import 'package:scoped_model/scoped_model.dart';

class BoasVindasService extends Model {
  bool carregando = true;
  bool cadastroCompleto = false;
  final BASE_URL = ServidorService.BASE_URL;

  Future<Void> verificarRegistros() async {
    carregando = true;
    notifyListeners();
    return http.get(BASE_URL + "/cadastro-finalizado").then((value) {
      carregando = false;
      notifyListeners();
      print(value);
    }).catchError((error) {
      carregando = false;
      notifyListeners();
      print(error);
    });
  }
}
