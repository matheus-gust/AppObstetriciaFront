// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sidebar.service.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SidebarService on _SidebarServiceBase, Store {
  final _$formApiAtom = Atom(name: '_SidebarServiceBase.formApi');

  @override
  FormApi get formApi {
    _$formApiAtom.reportRead();
    return super.formApi;
  }

  @override
  set formApi(FormApi value) {
    _$formApiAtom.reportWrite(value, super.formApi, () {
      super.formApi = value;
    });
  }

  final _$_SidebarServiceBaseActionController =
      ActionController(name: '_SidebarServiceBase');

  @override
  dynamic chamadaFormularios() {
    final _$actionInfo = _$_SidebarServiceBaseActionController.startAction(
        name: '_SidebarServiceBase.chamadaFormularios');
    try {
      return super.chamadaFormularios();
    } finally {
      _$_SidebarServiceBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
formApi: ${formApi}
    ''';
  }
}
