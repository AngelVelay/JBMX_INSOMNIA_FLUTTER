import 'package:flutter/material.dart';
import 'package:jbmx_insomnia_flutter/data/providers/cars.provider.dart';
import 'package:provider/provider.dart';
import '../../data/data.dart';
import '../../data/providers/cars.provider.dart';
import '../widgets/CardHomeWidget.dart';
import '../widgets/Drawer_Side.dart';
//import '../widgets/Drawer_Side.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CarsImageProvider = Provider.of<ImagesProvider>(context);

    return Scaffold(
        drawer: DrawerSide(),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
              backgroundColor: Colors.black,
              floating: false,
              pinned: true,
              //snap: true,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: FadeInImage(
                    width: 10,
                    height: 10,
                    placeholder: AssetImage('images/spinner_loading.gif'),
                    image: AssetImage('images/logo_insomnia_inverted.png'),
                    fit: BoxFit.cover,
                  )),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                  [Home(CarsImageProvider: CarsImageProvider)]),
            ),
          ],
        ));
  }
}

class Home extends StatelessWidget {
  const Home({
    Key key,
    @required this.CarsImageProvider,
  }) : super(key: key);

  final ImagesProvider CarsImageProvider;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        SearchBar(),
        FilterBrands(),
        CardHomeWidget(
          images: CarsImageProvider.ImageFavoriteURL,
          infoCars: CarsImageProvider.InfoCars,
          id: CarsImageProvider.id,
          imageGallery: CarsImageProvider.ImageInfoMatchStar,
        ),
      ]),
    );
  }
}

class AppBarHome extends StatelessWidget {
  const AppBarHome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 10),
          child: FadeInImage(
            width: 200,
            height: 200,
            placeholder: AssetImage('images/insomnia_logo.png'),
            image: AssetImage('images/insomnia_logo.png'),
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 10, left: 20, right: 10),

        //width: MediaQuery.of(context).size.width,
        //height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        child: Form(
          child: TextFormField(
            maxLength: 25,
            decoration: InputDecoration(
                hintText: 'Buscar un vehiculo',
                labelText: 'Buscar ',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                suffixIcon: Icon(Icons.car_rental_sharp)),
          ),
        ));
  }
}

class FilterBrands extends StatelessWidget {
  const FilterBrands({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: shadowList,
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(
                    categories[index]['iconPath'],
                    height: 50,
                    width: 50,
                    color: Colors.grey[700],
                  ),
                ),
                Text(categories[index]['name'])
              ],
            ),
          );
        },
      ),
    );
  }
}
