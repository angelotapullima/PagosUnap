import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pagos_unap/src/pages/pago_completado.dart';

class MetodoPagoPage extends StatelessWidget {
  const MetodoPagoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(24),
            ),
            child: Text(
              'Método de pago',
              style: TextStyle(
                fontSize: ScreenUtil().setSp(18),
                fontWeight: FontWeight.w700,
                letterSpacing: ScreenUtil().setSp(0.016),
              ),
            ),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(8),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(24),
            ),
            child: Text(
              'Seleccione un método de pago',
              style: TextStyle(
                color: const Color(0XFF808080),
                fontSize: ScreenUtil().setSp(16),
                fontWeight: FontWeight.w400,
                letterSpacing: ScreenUtil().setSp(0.016),
              ),
            ),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(15),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(24),
            ),
            height: ScreenUtil().setHeight(164),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: const Color(0XFF8DD433), width: 2),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tarjeta principal',
                        style: TextStyle(
                          color: const Color(0XFF8DD433),
                          fontSize: ScreenUtil().setSp(16),
                          fontWeight: FontWeight.w600,
                          letterSpacing: ScreenUtil().setSp(0.016),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(8),
                      ),
                      Text(
                        '4551 **** **** 9075',
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(14),
                          fontWeight: FontWeight.w400,
                          letterSpacing: ScreenUtil().setSp(0.016),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(8),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(25),
                        width: ScreenUtil().setWidth(69),
                        child: Column(
                          children: [
                            Center(
                              child: Text(
                                'CVV',
                                style: TextStyle(
                                  color: const Color(0XFF808080),
                                  fontSize: ScreenUtil().setSp(16),
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: ScreenUtil().setSp(0.016),
                                ),
                              ),
                            ),
                            Container(
                              height: ScreenUtil().setHeight(1),
                              width: ScreenUtil().setWidth(69),
                              color: const Color(0XFFC4C4C4),
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        child: Image.asset(
                          'assets/img/visa.png',
                          fit: BoxFit.cover,
                          height: ScreenUtil().setHeight(30),
                          width: ScreenUtil().setWidth(54),
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        child: SvgPicture.asset(
                          'assets/svg/selectOption.svg',
                          fit: BoxFit.cover,
                          height: ScreenUtil().setHeight(30),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'Eliminar',
                        style: TextStyle(
                          color: const Color(0XFF8DD433),
                          fontSize: ScreenUtil().setSp(16),
                          fontWeight: FontWeight.w400,
                          letterSpacing: ScreenUtil().setSp(0.016),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(16),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(24),
            ),
            height: ScreenUtil().setHeight(57),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: const Color(0XFFC4C4C4), width: 2),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  SizedBox(
                    width: ScreenUtil().setWidth(8),
                  ),
                  SizedBox(
                    child: Image.asset(
                      'assets/img/mastercard.png',
                      fit: BoxFit.cover,
                      height: ScreenUtil().setHeight(30),
                      width: ScreenUtil().setWidth(54),
                    ),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(8),
                  ),
                  Text(
                    '5278 **** **** 2147',
                    style: TextStyle(
                      color: const Color(0XFF808080),
                      fontSize: ScreenUtil().setSp(14),
                      fontWeight: FontWeight.w400,
                      letterSpacing: ScreenUtil().setSp(0.016),
                    ),
                  ),
                  const Spacer(),
                  /* SizedBox(
                              child: SvgPicture.asset(
                                'assets/carrito/unSelect.svg',
                                fit: BoxFit.cover,
                                height: ScreenUtil().setHeight(30),
                              ),
                            ), */
                  SizedBox(
                    width: ScreenUtil().setWidth(8),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(20),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(24),
            ),
            height: ScreenUtil().setHeight(40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: const Color(0XFF2186D0), width: 2),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: ScreenUtil().setWidth(16),
                ),
                Text(
                  'AGREGAR NUEVA TARJETA ',
                  style: TextStyle(
                    color: const Color(0XFF2186D0),
                    fontSize: ScreenUtil().setSp(16),
                    fontWeight: FontWeight.w400,
                    letterSpacing: ScreenUtil().setSp(0.016),
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.card_giftcard,
                  color: const Color(0XFF2186D0),
                  size: ScreenUtil().setSp(16),
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(16),
                ),
              ],
            ),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(10),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(24)),
            child: const Divider(
              thickness: 1,
              color: Color(0XFFC4C4C4),
            ),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(10),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(10),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(24)),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Subtotal',
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(16),
                        fontWeight: FontWeight.w500,
                        letterSpacing: ScreenUtil().setSp(0.016),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'S/35.00',
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(16),
                        fontWeight: FontWeight.w500,
                        letterSpacing: ScreenUtil().setSp(0.016),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(8),
                ),
                Row(
                  children: [
                    Text(
                      'Descuento',
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(16),
                        fontWeight: FontWeight.w500,
                        letterSpacing: ScreenUtil().setSp(0.016),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'S/00.00',
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(16),
                        fontWeight: FontWeight.w500,
                        letterSpacing: ScreenUtil().setSp(0.016),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(8),
                ),
                const Divider(),
                Row(
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(16),
                        fontWeight: FontWeight.w500,
                        letterSpacing: ScreenUtil().setSp(0.016),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'S/35.00',
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(16),
                        fontWeight: FontWeight.w700,
                        letterSpacing: ScreenUtil().setSp(0.016),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  child: Center(
                    child: Image.asset(
                      'assets/img/jardines.png',
                      fit: BoxFit.cover,
                      height: ScreenUtil().setHeight(80),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 700),
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return const PagoCompletado();
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
                    height: ScreenUtil().setHeight(40),
                    margin: EdgeInsets.symmetric(
                      vertical: ScreenUtil().setHeight(16),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0XFF2186D0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.25),
                          blurRadius: 2,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'FINALIZAR TU COMPRA',
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(16),
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          letterSpacing: ScreenUtil().setSp(0.016),
                        ),
                      ),
                    ),
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
