import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pagos_unap/src/bloc/provider_bloc.dart';
import 'package:pagos_unap/src/pages/home.dart';
import 'package:pagos_unap/src/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderBloc(
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (child) => MaterialApp(
          title: 'Sethi',
          theme: ThemeData(
            primarySwatch: Colors.blueGrey,
            textTheme: GoogleFonts.poppinsTextTheme(),
          ),
          debugShowCheckedModeBanner: false,
          builder: (BuildContext context, Widget? child) {
            final MediaQueryData data = MediaQuery.of(context);
            return MediaQuery(
              data: data.copyWith(textScaleFactor: data.textScaleFactor > 2.0 ? 1.2 : data.textScaleFactor),
              child: child!,
            );
          },
          supportedLocales: const [
            Locale('es'),
            Locale('es', 'ES'),
          ],
          localeResolutionCallback: (Locale? locale, Iterable<Locale> supportedLocales) {
            return locale;
          },
          initialRoute: 'splash',
          routes: {
            'splash': (BuildContext context) => const Splash(),
            'home': (BuildContext context) => const HomePage(),
          },
        ),
      ),
    );
  }
}
