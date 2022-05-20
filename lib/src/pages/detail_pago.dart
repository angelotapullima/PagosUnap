import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailPayment extends StatelessWidget {
  const DetailPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: SvgPicture.asset(
              'assets/svg/back3.svg',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                margin: EdgeInsets.only(
                  left: ScreenUtil().setWidth(10),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const BackButton(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SafeArea(
            child: Container(
              margin: EdgeInsets.only(
                left: ScreenUtil().setWidth(20),
                right: ScreenUtil().setWidth(20),
                bottom: ScreenUtil().setHeight(40),
                top: ScreenUtil().setHeight(60),
              ),
              padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(10)),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              height: double.infinity,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: ScreenUtil().setHeight(10),
                  ),
                  Row(
                    children: [
                      const Text(
                        '#45554 ',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const Spacer(),
                      Image.asset(
                        'assets/img/logo_unap.png',
                        height: ScreenUtil().setHeight(50),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(20),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: ScreenUtil().setWidth(80),
                        child: const Text(
                          'Concepto :  ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Text(' pago por matrícula'),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(5),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: ScreenUtil().setWidth(80),
                        child: const Text(
                          'Alumno     :  ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Text(' Angelo Tapullima Del Aguila'),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(5),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: ScreenUtil().setWidth(80),
                        child: const Text(
                          'Dni              :  ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Text(' 77356425'),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(5),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: ScreenUtil().setWidth(80),
                        child: const Text(
                          'Código      :  ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Text(' 2165286'),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(5),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: ScreenUtil().setWidth(80),
                        child: const Text(
                          'Fecha        :  ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Text(' 20 May 2022'),
                      const Spacer(),
                      SizedBox(
                        width: ScreenUtil().setWidth(50),
                        child: const Text(
                          'Hora :  ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Text(' 2:00 pm'),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(5),
                  ),
                  Row(
                    children: [
                      const Text(
                        'Estado:  ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(4),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text(
                          'Completado',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(50),
                  ),
                  Row(
                    children: const [
                      Text(
                        'Autoseguro',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'S/.25.00',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(20),
                  ),
                  Row(
                    children: const [
                      Text(
                        'Matricula normal',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'S/.25.00',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(20),
                  ),
                  Row(
                    children: const [
                      Text(
                        'Materiales reactivos',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'S/.10.00',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(20),
                  ),
                  Row(
                    children: const [
                      Text(
                        'FEU',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'S/.6.00',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: const [
                      Text(
                        'Total',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'S/.66.00',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
