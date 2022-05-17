import 'package:flutter/material.dart';
import 'package:pagos_unap/src/bloc/provider_bloc.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () async {
      final bottomBloc = ProviderBloc.botton(context);
      bottomBloc.changePage(0);
      Navigator.pushNamedAndRemoveUntil(context, 'home', (route) => false);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          SizedBox.expand(),
          Center(
            child: FlutterLogo(
              size: 300,
            ),
          ),
        ],
      ),
    );
  }
}
