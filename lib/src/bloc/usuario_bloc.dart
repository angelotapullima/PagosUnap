import 'dart:convert';

import 'package:rxdart/subjects.dart';

class UsuarioBloc {
  final _cargandoBusquedaController = BehaviorSubject<bool>();
  final _usuarioBusquedaController = BehaviorSubject<List<UsuarioModel>>();

  Stream<List<UsuarioModel>> get usuarioBusquedaStream => _usuarioBusquedaController.stream;
  Stream<bool> get cargandoBusquedaStream => _cargandoBusquedaController.stream;

  dispose() {
    _usuarioBusquedaController.close();
    _cargandoBusquedaController.close();
  }

  void obtenerUserByLike(String dato) async {
    final listalumnos = [
      UsuarioModel(
        nombre: 'Angelo Tapullima Del Aguila',
        facultad: 'Facultad de Ingeniería de Sistemas e Informática',
        codigo: '2165286',
      ),
      UsuarioModel(
        nombre: 'Pepito Perez',
        facultad: 'Facultad de Ingeniería de Sistemas e Informática',
        codigo: '2165284',
      ),
      UsuarioModel(
        nombre: 'Viktor Lincol Zavaleta De Pisco',
        facultad: 'Facultad de Ingeniería de Sistemas e Informática',
        codigo: '2165285',
      ),
      UsuarioModel(
        nombre: 'Christian Makano Salazar Jaimes',
        facultad: 'Facultad de Ingeniería de Sistemas e Informática',
        codigo: '2165286',
      ),
      UsuarioModel(
        nombre: 'Cesar Tranz Noriega Mendez',
        facultad: 'Facultad de Ingeniería de Sistemas e Informática',
        codigo: '2165286',
      ),
    ];

    List<String> filter = [];

    for (var i = 0; i < listalumnos.length; i++) {
      filter.add(listalumnos[i].nombre.toString());
    }

    var yfbf = listalumnos.where((element) => element.codigo == dato);

    _usuarioBusquedaController.sink.add(yfbf.toList());
  }

  void obtenerUserByLike2() async {
    final listalumnos = [
      UsuarioModel(
        nombre: 'Angelo Tapullima Del Aguila',
        facultad: 'Facultad de Ingeniería de Sistemas e Informática',
        codigo: '2165286',
      ),
      UsuarioModel(
        nombre: 'Pepito Perez',
        facultad: 'Facultad de Ingeniería de Sistemas e Informática',
        codigo: '2165284',
      ),
      UsuarioModel(
        nombre: 'Viktor Lincol Zavaleta De Pisco',
        facultad: 'Facultad de Ingeniería de Sistemas e Informática',
        codigo: '2165285',
      ),
      UsuarioModel(
        nombre: 'Christian Makano Salazar Jaimes',
        facultad: 'Facultad de Ingeniería de Sistemas e Informática',
        codigo: '2165286',
      ),
      UsuarioModel(
        nombre: 'Cesar Tranz Noriega Mendez',
        facultad: 'Facultad de Ingeniería de Sistemas e Informática',
        codigo: '2165286',
      ),
    ];

    _usuarioBusquedaController.sink.add(listalumnos);
  }
}

class UsuarioModel {
  String? nombre;
  String? facultad;
  String? codigo;

  UsuarioModel({
    this.nombre,
    this.facultad,
    this.codigo,
  });
  Map toJson() => {
        'nombre': nombre,
        'facultad': facultad,
        'codigo': codigo,
      };
}
