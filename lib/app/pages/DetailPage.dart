import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../custom/BorderIcon.dart';
import '../../custom/OptionButton.dart';
import '../../data/providers/cars.provider.dart';
import '../../utils/constants.dart';
import '../../utils/widget_functions.dart';

class DetailPage extends StatelessWidget {
  //final dynamic itemData;

  //const DetailPage({Key key, @required this.itemData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<dynamic> Images =
        ModalRoute.of(context).settings.arguments as List;
    final List<dynamic> InfoCar =
        ModalRoute.of(context).settings.arguments as List;
    final List<dynamic> imageGallery =
        ModalRoute.of(context).settings.arguments as List;

    //print(imageCarsURL);

    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    final double padding = 25;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(80),
                      bottomRight: Radius.circular(80))),
              floating: true,
              pinned: true,
              snap: true,
              backgroundColor: Colors.black,
              expandedHeight: 250,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Container(
                    width: double.infinity,
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      InfoCar[1]['brandName'].toString(),
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 16.0,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  background: FadeInImage(
                    placeholder: AssetImage('images/spinner_loading.gif'),
                    image: NetworkImage(Images[0]),
                    fit: BoxFit.cover,
                  )),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                InfoCarsDetails(size, padding, sidePadding, InfoCar,
                    imageGallery, themeData, context),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Container InfoCarsDetails(
      Size size,
      double padding,
      EdgeInsets sidePadding,
      List<dynamic> InfoCar,
      List<dynamic> Image,
      ThemeData themeData,
      BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: padding),
                Padding(
                  padding: sidePadding,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              InfoCar[1]['brandName'].toString(),
                              maxLines: 2,
                              style: themeData.textTheme.headline4,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: padding),
                            Text(
                              InfoCar[1]['anio'].toString(),
                              style: themeData.textTheme.subtitle2,
                            ),
                          ],
                        ),
                        BorderIcon(
                          child: Container(
                            child: FadeInImage.assetNetwork(
                              placeholder: 'images/bugatti.png',
                              image: 'images/bugatti.png',
                              height: 50,
                              width: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: padding),
                Padding(
                  padding: sidePadding,
                  child: Text(
                    "Características",
                    style: themeData.textTheme.headline4,
                  ),
                ),
                SizedBox(height: padding),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      InformationTile(
                        content: Icon(Icons.health_and_safety_rounded),
                        name: "Cascos",
                      ),
                      InformationTile(
                        content: Icon(Icons.back_hand_sharp),
                        name: "Guantes",
                      ),
                      InformationTile(
                        content: Icon(Icons.two_wheeler_outlined),
                        name: "Accesorios",
                      ),
                      InformationTile(
                        content: Icon(Icons.handyman_outlined),
                        name: "Herramientas",
                      )
                    ],
                  ),
                ),
                SizedBox(height: padding),
                Column(children: [
                  Text(
                    'Caracteristicas',
                    textAlign: TextAlign.justify,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  ListTile(
                    leading: const Icon(Icons.access_time_filled_sharp),
                    title: Text(InfoCar[1]['brandName'].toString()),
                    subtitle: Text(InfoCar[1]['anio'].toString()),
                  ),
                  ListTile(
                    leading: const Icon(Icons.cloud_circle_rounded),
                    title: Text('Cilindrada'),
                    subtitle: Text('${InfoCar[1]['cylinder']} CC'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.account_balance_rounded),
                    title: Text('Origen'),
                    subtitle: Text('${InfoCar[1]['origin']}'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.numbers_outlined),
                    title: Text('Numero de Serie'),
                    subtitle: Text('${InfoCar[1]['serial']}'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.reduce_capacity_outlined),
                    //trailing: const Icon(Icons.keyboard_arrow_right),
                    title: Text('Capacidad Litros'),
                    subtitle: Text('${InfoCar[1]['capacity']} L'),
                  ),
                  SizedBox(height: 10),
                ]),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: size.width * 0.8,
                  child: RaisedButton(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      Navigator.pushNamed(context, 'gallery', arguments: Image);
                    },
                    child: Text(
                      'Imagenes',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class InformationTile extends StatelessWidget {
  final Icon content;
  final String name;

  const InformationTile({Key key, @required this.content, @required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final Size size = MediaQuery.of(context).size;
    final double tileSize = size.width * 0.20;
    return Container(
      margin: const EdgeInsets.only(left: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BorderIcon(
              width: tileSize,
              height: tileSize,
              child: Icon(
                content.icon,
              )),
          addVerticalSpace(15),
          Text(
            name,
            style: themeData.textTheme.headline6,
          )
        ],
      ),
    );
  }
}
