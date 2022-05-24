import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pagos_unap/src/pages/detail_pago.dart';

class PagosRealizados extends StatelessWidget {
  const PagosRealizados({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            bottom: false,
            child: Container(
              margin: EdgeInsets.only(
                top: ScreenUtil().setHeight(15),
              ),
              height: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: ScreenUtil().setHeight(15),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: ScreenUtil().setWidth(15),
                      ),
                      const Text(
                        'Pagos Realizados',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                transitionDuration: const Duration(milliseconds: 700),
                                pageBuilder: (context, animation, secondaryAnimation) {
                                  return const DetailPayment();
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
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(10, 8), // changes position of shadow
                                ),
                              ],
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: ScreenUtil().setWidth(16),
                              vertical: ScreenUtil().setHeight(10),
                            ),
                            margin: EdgeInsets.symmetric(
                              horizontal: ScreenUtil().setWidth(10),
                              vertical: ScreenUtil().setHeight(10),
                            ),
                            child: SizedBox(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: ScreenUtil().setWidth(40),
                                    child: const Text(
                                      '18 sep 2022',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    width: ScreenUtil().setWidth(10),
                                  ),
                                  SizedBox(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text('Pago por concepto de Sepelio'),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: ScreenUtil().setWidth(10),
                                                vertical: ScreenUtil().setHeight(10),
                                              ),
                                              width: ScreenUtil().setWidth(40),
                                              height: ScreenUtil().setWidth(40),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(5),
                                                border: Border.all(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              child: SizedBox(
                                                child: SvgPicture.asset(
                                                  'assets/svg/matricula.svg',
                                                  color: const Color(0xFF052D07),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: ScreenUtil().setWidth(10),
                                            ),
                                            const Text(
                                              'S/. 35.00',
                                              style: TextStyle(
                                                color: Color(0xFFE33E1E),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Text(
                                          'Angelo Tapullima Del Aguila',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
