import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pagos_unap/src/pages/detail_deuda.dart';
import 'package:pagos_unap/src/pages/pagar_del_compa.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list = [
      MetodoModel(nombre: 'Matrícula', icono: 'matricula.svg'),
      MetodoModel(nombre: 'Matrícula extemporanea', icono: 'extenporaneo.svg'),
      MetodoModel(nombre: 'Reingreso', icono: 'reingreso.svg'),
      MetodoModel(nombre: 'REVISION CURRICULAR', icono: 'revision.svg'),
      MetodoModel(nombre: 'SUSTENTACIÓN DE TESIS', icono: 'titulo.svg'),
      MetodoModel(nombre: 'PRACTICA PRE-PROFESIONAL', icono: 'practica.svg'),
      MetodoModel(nombre: 'DUPLICADO CARNET BIBLIOTECA ESPECIALIZADA', icono: 'carnet.svg'),
      MetodoModel(nombre: 'Más', icono: 'more.svg'),
    ];
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: SvgPicture.asset(
              'assets/svg/back.svg',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: ScreenUtil().setHeight(30),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Hola, Angelo',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: ScreenUtil().setHeight(10),
                            ),
                            const Text(
                              'Facultad de ingeniería de Sistemas e Informática',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: ScreenUtil().setHeight(40),
                        width: ScreenUtil().setHeight(40),
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(8),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: SizedBox(
                          child: SvgPicture.asset(
                            'assets/svg/alert.svg',
                            color: const Color(0xFFEFCD4F),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            child: DraggableScrollableSheet(
              initialChildSize: 0.75,
              minChildSize: 0.75,
              maxChildSize: 0.95,
              builder: (_, controller) {
                return Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: ScreenUtil().setHeight(10),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(20),
                        ),
                        child: const Text(
                          'Deuda',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(20),
                        ),
                        child: Row(
                          children: [
                            const Text(
                              'S/.66.00',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.redAccent,
                              ),
                            ),
                            const Spacer(),
                            InkWell(
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
                              child: const Text(
                                'Ver Detalles ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(10),
                      ),
                      const Divider(
                        thickness: 1.2,
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(10),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(15),
                        ),
                        child: const Text(
                          'Consulta la deuda de tu compañero',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              opaque: false,
                              transitionDuration: const Duration(milliseconds: 400),
                              pageBuilder: (context, animation, secondaryAnimation) {
                                return const PagarCompa();
                              },
                              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                return FadeTransition(
                                  opacity: animation,
                                  child: child,
                                );
                              },
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(15)),
                          width: double.infinity,
                          height: ScreenUtil().setHeight(40),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: ScreenUtil().setWidth(10),
                              ),
                              const Text(
                                'Búscar',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 123, 121, 121),
                                ),
                              ),
                              const Spacer(),
                              const Icon(Icons.search),
                              SizedBox(
                                width: ScreenUtil().setWidth(10),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(15),
                      ),
                      const Divider(
                        thickness: 1.2,
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(10),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(15),
                        ),
                        child: const Text(
                          'Conceptos de pago',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(10),
                      ),
                      Expanded(
                        child: GridView.builder(
                          controller: controller,
                          itemCount: list.length,
                          padding: EdgeInsets.zero,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: ScreenUtil().setWidth(10),
                            childAspectRatio: .8,
                            crossAxisCount: 4,
                            mainAxisSpacing: ScreenUtil().setHeight(2),
                          ),
                          itemBuilder: (context, index) {
                            return LayoutBuilder(
                              builder: (context, constrain) {
                                return Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: ScreenUtil().setWidth(2),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                          horizontal: ScreenUtil().setWidth(15),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: ScreenUtil().setWidth(12),
                                          vertical: ScreenUtil().setHeight(12),
                                        ),
                                        width: constrain.maxWidth,
                                        height: constrain.maxHeight - (constrain.maxHeight * 0.5),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          border: Border.all(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        child: SizedBox(
                                          child: SvgPicture.asset(
                                            'assets/svg/${list[index].icono}',
                                            color: const Color(0xFF052D07),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '${list[index].nombre}',
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MetodoModel {
  String? nombre;
  String? icono;

  MetodoModel({
    this.nombre,
    this.icono,
  });
}
