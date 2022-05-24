import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pagos_unap/src/utils/responsive.dart';

class Perfil extends StatelessWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
          ),
          Container(
            margin: EdgeInsets.only(
              top: responsive.hp(49),
            ),
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: ScreenUtil().setHeight(18),
                    horizontal: ScreenUtil().setWidth(10),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg/informacion.svg',
                        width: ScreenUtil().setHeight(22),
                        height: ScreenUtil().setHeight(22),
                        color: const Color(0xff0D5332),
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(10),
                      ),
                      const Text(
                        'Información Personal',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: ScreenUtil().setHeight(18),
                    horizontal: ScreenUtil().setWidth(10),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg/politica.svg',
                        width: ScreenUtil().setHeight(22),
                        height: ScreenUtil().setHeight(22),
                        color: const Color(0xff0D5332),
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(10),
                      ),
                      const Text(
                        'Politicas de Privacidad',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: ScreenUtil().setHeight(18),
                    horizontal: ScreenUtil().setWidth(10),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg/terminos.svg',
                        width: ScreenUtil().setHeight(22),
                        height: ScreenUtil().setHeight(22),
                        color: const Color(0xff0D5332),
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(10),
                      ),
                      const Text(
                        'Términos y condiciones',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: ScreenUtil().setHeight(18),
                    horizontal: ScreenUtil().setWidth(8),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg/soporte.svg',
                        width: ScreenUtil().setHeight(25),
                        height: ScreenUtil().setHeight(25),
                        color: const Color(0xff0D5332),
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(10),
                      ),
                      const Text(
                        'Soporte',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: ScreenUtil().setHeight(18),
                    horizontal: ScreenUtil().setWidth(8),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg/logout.svg',
                        width: ScreenUtil().setHeight(25),
                        height: ScreenUtil().setHeight(25),
                        color: const Color(0xff0D5332),
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(10),
                      ),
                      const Text(
                        'Cerrar Sesión',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: responsive.hp(50),
            width: double.infinity,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: SvgPicture.asset(
                      'assets/svg/back2.svg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: ScreenUtil().setHeight(25),
                      left: ScreenUtil().setWidth(20),
                      right: ScreenUtil().setWidth(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                                height: ScreenUtil().setHeight(80),
                                width: ScreenUtil().setHeight(80),
                                child: SvgPicture.asset(
                                  'assets/svg/perfil.svg',
                                  color: const Color(0xFF32EA25),
                                ) //Imagsset('assets/logo_largo.svg'),
                                ),
                            const Expanded(
                              child: Text(
                                'Angelo Tapullima Del Aguila',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                            )
                          ],
                        ),
                        const Text(
                          'Jardines del Eden, ¡tu mejor opción!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: -ScreenUtil().setHeight(10),
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(40),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFF066438),
                    ),
                    height: ScreenUtil().setHeight(180),
                  ),
                ),
                Positioned(
                  bottom: -ScreenUtil().setHeight(25),
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(30),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFFE33E1E),
                    ),
                    height: ScreenUtil().setHeight(180),
                  ),
                ),
                Positioned(
                  bottom: -ScreenUtil().setHeight(40),
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(20),
                    ),
                    padding: EdgeInsets.only(
                      left: ScreenUtil().setWidth(30),
                      right: ScreenUtil().setWidth(30),
                      bottom: ScreenUtil().setHeight(50),
                      top: ScreenUtil().setHeight(10),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFFF6F9F8),
                    ),
                    height: ScreenUtil().setHeight(180),
                    child: Image.asset('assets/img/jardines.png'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
