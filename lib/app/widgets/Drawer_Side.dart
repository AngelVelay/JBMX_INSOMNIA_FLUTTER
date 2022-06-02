import 'package:flutter/material.dart';

import '../pages/DetailPage.dart';
import '../pages/Gallery.dart';
import '../pages/HomeScreen.dart';
import '../pages/details.dart';

class DrawerSide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            _DrawerHeader(),
            ListTile(
              leading: const Icon(Icons.pages_outlined),
              title: const Text('Home'),
              onTap: () {
                // Navigator.pushReplacementNamed(context, HomeScreen.routerName);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.people_outline),
              title: const Text('Imagenes'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DragAndDrop()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings_outlined),
              title: const Text('Detalles'),
              onTap: () {
                // Navigator.pop(context);
                // Navigator.pushReplacementNamed(
                //     context, SettingsScreen.routerName);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/insomnia_logo.png'),
              fit: BoxFit.contain)),
    );
  }
}
