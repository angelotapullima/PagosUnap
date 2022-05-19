import 'package:flutter/material.dart';
import 'package:pagos_unap/src/bloc/bottom_navigation_bloc.dart';
import 'package:pagos_unap/src/bloc/usuario_bloc.dart';

class ProviderBloc extends InheritedWidget {
  final bottonBloc = BottomNaviBloc();
  final usuarioBloc = UsuarioBloc();

  ProviderBloc({Key? key, required Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(ProviderBloc oldWidget) => true;

  static BottomNaviBloc botton(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<ProviderBloc>())!.bottonBloc;
  }

  static UsuarioBloc usu(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<ProviderBloc>())!.usuarioBloc;
  }
}
