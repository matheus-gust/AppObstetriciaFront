import 'package:obstetricia/UI/components/pagina_inicial/sidebar/shared/model/Formulario.model.dart';

class FormApi {
  List<Formulario> formularios;

  FormApi({this.formularios});

  FormApi.fromJson(Map<String, dynamic> json) {
    if (json['formularios'] != null) {
      formularios = new List<Formulario>();
      json['formularios'].forEach((v) {
        formularios.add(new Formulario.fromJson(v));
      });
    }
  }
}