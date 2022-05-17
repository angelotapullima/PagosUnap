import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pagos_unap/src/bloc/provider_bloc.dart';
import 'package:pagos_unap/src/pages/tabs/inicio.dart';
import 'package:pagos_unap/src/utils/responsive.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> pageList = [];

  @override
  void initState() {
    pageList.add(const InicioPage());
    pageList.add(Container());
    pageList.add(Container());

    super.initState();
    /* LocalNotificationApi.init(initScheluded: true);
    listenNotification(); */
  }

  @override
  Widget build(BuildContext context) {
    final bottomBloc = ProviderBloc.botton(context);

    final responsive = Responsive.of(context);

    return Scaffold(
      body: Stack(
        children: [
          StreamBuilder(
            stream: bottomBloc.selectPageStream,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                bottomBloc.changePage(snapshot.data);
              }
              return Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      bottom: kBottomNavigationBarHeight * responsive.hp(.17),
                    ),
                    child: IndexedStack(
                      index: snapshot.data,
                      children: pageList,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: kBottomNavigationBarHeight * responsive.hp(.17),
                      padding: EdgeInsets.only(
                        bottom: responsive.hp(2),
                        left: responsive.wp(2),
                        right: responsive.wp(2),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadiusDirectional.only(
                          topStart: Radius.circular(20),
                          topEnd: Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: StreamBuilder(
                        stream: bottomBloc.selectPageStream,
                        builder: (BuildContext context, AsyncSnapshot snapshot) {
                          return Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: responsive.wp(2),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    bottomBloc.changePage(0);
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: responsive.hp(1),
                                      ),
                                      SizedBox(
                                        height: responsive.ip(3),
                                        width: responsive.ip(3),
                                        child: (bottomBloc.page == 0)
                                            ? SvgPicture.asset(
                                                'assets/svg/home.svg',
                                                color: const Color(0xFF045726),
                                              )
                                            : SvgPicture.asset(
                                                'assets/svg/home.svg',
                                                color: Colors.grey,
                                              ), //Imagsset('assets/logo_largo.svg'),
                                      ),
                                      Text(
                                        'Home',
                                        style: TextStyle(
                                          fontSize: ScreenUtil().setSp(12),
                                          color: (bottomBloc.page == 0) ? const Color(0xFF045726) : Colors.grey,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    bottomBloc.changePage(1);
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: responsive.hp(1),
                                      ),
                                      SizedBox(
                                        height: responsive.ip(3),
                                        width: responsive.ip(3),
                                        child: (bottomBloc.page == 1)
                                            ? SvgPicture.asset(
                                                'assets/svg/pagos.svg',
                                                color: const Color(0xFF045726),
                                              )
                                            : SvgPicture.asset(
                                                'assets/svg/pagos.svg',
                                                color: Colors.grey,
                                              ), //Imagsset('assets/logo_largo.svg'),
                                      ),
                                      Text(
                                        'Pagos',
                                        style: TextStyle(
                                          fontSize: ScreenUtil().setSp(12),
                                          color: (bottomBloc.page == 1) ? const Color(0xFF045726) : Colors.grey,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    bottomBloc.changePage(2);
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: responsive.hp(1),
                                      ),
                                      SizedBox(
                                        height: responsive.ip(3),
                                        width: responsive.ip(3),
                                        child: (bottomBloc.page == 2)
                                            ? SvgPicture.asset(
                                                'assets/svg/perfil.svg',
                                                color: const Color(0xFF045726),
                                              )
                                            : SvgPicture.asset(
                                                'assets/svg/perfil.svg',
                                                color: Colors.grey,
                                              ), //Imagsset('assets/logo_largo.svg'),
                                      ),
                                      Text(
                                        'Perfil',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: ScreenUtil().setSp(12),
                                          color: (bottomBloc.page == 2) ? const Color(0xFF045726) : Colors.grey,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
