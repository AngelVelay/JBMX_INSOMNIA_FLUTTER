import 'package:get/get.dart';
import 'package:jbmx_insomnia_flutter/app/pages/HomeScreen.dart';
import 'package:jbmx_insomnia_flutter/app/pages/login.dart';
import 'package:jbmx_insomnia_flutter/app/pages/splash.dart';
import 'package:jbmx_insomnia_flutter/core/routes/routes.dart';

import '../../app/pages/Gallery.dart';
import '../../app/pages/details.dart';

abstract class Pages {
  static final pages = [
    GetPage(
      name: Routes.MAIN,
      page: () => HomeScreen(),
    ),
    // GetPage(
    //   name: Routes.DETAILS,
    //   page: () => DetailsScreen(),
    // ),
    GetPage(
      name: Routes.GALLERY,
      page: () => DragAndDrop(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
    ),
  ];
}
