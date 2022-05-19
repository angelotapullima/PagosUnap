import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pagos_unap/src/bloc/provider_bloc.dart';
import 'package:pagos_unap/src/bloc/usuario_bloc.dart';
import 'package:pagos_unap/src/pages/detail_deuda.dart';
import 'package:pagos_unap/src/utils/responsive.dart';

class PagarCompa extends StatefulWidget {
  const PagarCompa({Key? key}) : super(key: key);

  @override
  State<PagarCompa> createState() => _PagarCompaState();
}

class _PagarCompaState extends State<PagarCompa> {
  final FocusNode _focusSearch = FocusNode();
  final TextEditingController _controllerBusquedaProducto = TextEditingController();

  final controller = ControllerDatoJuegador();
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    final usuarioBloc = ProviderBloc.usu(context);
    usuarioBloc.obtenerUserByLike2();
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        toolbarHeight: responsive.hp(8),
        centerTitle: false,
        backgroundColor: const Color(0xFFF0EFEF),
        flexibleSpace: SafeArea(
          child: Container(
            margin: EdgeInsets.only(
              left: responsive.wp(10),
              top: responsive.hp(1),
            ),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: TextField(
                        toolbarOptions: const ToolbarOptions(paste: true, cut: true, copy: true, selectAll: true),
                        controller: _controllerBusquedaProducto,
                        keyboardType: TextInputType.text,
                        textAlign: TextAlign.start,
                        scrollPadding: EdgeInsets.zero,
                        focusNode: _focusSearch,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: ScreenUtil().setWidth(15),
                          ),

                          //constraints: BoxConstraints.tight(Size(0, 0)),
                          filled: true,
                          fillColor: Colors.white,
                          labelStyle: const TextStyle(color: Colors.white),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                          hintText: 'Buscar por codigo de Alumno',
                          hintStyle: const TextStyle(color: Colors.black45),
                        ),
                        onChanged: (value) {
                          controller.changeResetPage.value = true;
                          if (value.length >= 0 && value != ' ' && value != '') {
                            controller.changeResetPage.value = true;

                            final usuarioBloc = ProviderBloc.usu(context);
                            usuarioBloc.obtenerUserByLike(value);
                          }
                        },
                        onSubmitted: (value) async {
                          if (value.length >= 0 && value != ' ' && value != '') {
                            controller.changeResetPage.value = true;

                            final usuarioBloc = ProviderBloc.usu(context);
                            usuarioBloc.obtenerUserByLike(value);
                          }
                        }),
                  ),
                ),
                SizedBox(
                  width: responsive.wp(1),
                ),
                ValueListenableBuilder(
                  valueListenable: controller._currentPageNotifier,
                  builder: (BuildContext context, bool data, Widget? child) {
                    return (data)
                        ? InkWell(
                            onTap: () {
                              controller.changeResetPage.value = false;
                              _controllerBusquedaProducto.text = '';
                              /*  igual++;

                                productosBloc.resetearCantidades();
                                _controllerBusquedaProducto.text = '';
                                //setState(() {}); */
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: responsive.ip(1.5),
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                                size: responsive.ip(2),
                              ),
                            ),
                          )
                        : Container();
                  },
                ),
                SizedBox(
                  width: responsive.wp(1),
                ),
              ],
            ),
          ),
        ),
      ),
      body: StreamBuilder(
        stream: usuarioBloc.usuarioBusquedaStream,
        builder: (context, AsyncSnapshot<List<UsuarioModel>> snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!.isNotEmpty) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) {
                            return const DetailDeuda();
                          },
                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            var begin = const Offset(0.0, 1.0);
                            var end = Offset.zero;
                            var curve = Curves.ease;

                            var tween = Tween(begin: begin, end: end).chain(
                              CurveTween(curve: curve),
                            );

                            return SlideTransition(
                              position: animation.drive(tween),
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(2)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: ScreenUtil().setWidth(5),
                                ),
                                height: ScreenUtil().setHeight(45),
                                width: ScreenUtil().setHeight(45),
                                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                child: SvgPicture.asset(
                                  'assets/svg/informacion.svg',
                                  color: const Color(0xFF052D07),
                                ),
                              ),
                              SizedBox(
                                width: ScreenUtil().setWidth(10),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${snapshot.data![index].nombre}',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 13,
                                      ),
                                    ),
                                    Text(
                                      '${snapshot.data![index].facultad}',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 13,
                                      ),
                                    ),
                                    Text(
                                      '${snapshot.data![index].codigo}',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          const Divider()
                        ],
                      ),
                    ),
                  );
                },
              );
            } else {
              return const Center(
                child: CupertinoActivityIndicator(),
              );
            }
          } else {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          }
        },
      ),
    );
  }
}

class ControllerDatoJuegador extends ChangeNotifier {
  ValueNotifier<bool> _currentPageNotifier = ValueNotifier<bool>(false);
  ValueNotifier<bool> get changeResetPage => this._currentPageNotifier;
}
