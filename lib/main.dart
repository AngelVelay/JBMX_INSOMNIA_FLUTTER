import 'package:flutter/material.dart';
import 'package:jbmx_insomnia_flutter/app/pages/HomeScreen.dart';
import 'package:jbmx_insomnia_flutter/app/pages/details.dart';
import 'package:jbmx_insomnia_flutter/data/providers/login_provider.dart';
import 'package:provider/provider.dart';

import 'app/pages/DetailPage.dart';
import 'app/pages/DetailSliver.dart';
import 'app/pages/Gallery.dart';
import 'data/providers/cars.provider.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ImagesProvider(),
          lazy: true,
        ),
        ChangeNotifierProvider(
          create: (_) => LoginProvider(),
          lazy: false,
        ),
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: 'home',
      theme: ThemeData(),
      routes: {
        'home': (_) => HomeScreen(),
        'details': (_) => DetailPage(),
        'gallery': (_) => DragAndDrop(),
      },
    );
  }
}

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: HomeScreen(),
//     );
//   }
// }
