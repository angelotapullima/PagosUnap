import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class PagoCompletado extends StatelessWidget {
  const PagoCompletado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SafeArea(
            child: SizedBox(
              height: ScreenUtil().setHeight(200),
              child: Center(
                child: Image.asset(
                  'assets/img/jardines.png',
                  fit: BoxFit.cover,
                  height: ScreenUtil().setHeight(130),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/json/complete.json',
                width: double.infinity,
              ),
              const Text(
                'Pago Completado',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().setWidth(20),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: ScreenUtil().setHeight(10),
                ),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil('home', (Route<dynamic> route) => false);
                  },
                  child: const Text(
                    'Volver',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
