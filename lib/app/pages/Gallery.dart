//import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reorderable_grid_view/reorderable_grid_view.dart';

import '../../data/data.dart';
import '../../data/providers/cars.provider.dart';
import '../widgets/Drawer_Side.dart';
import '../widgets/Drawer_Side.dart';
import '../widgets/FloatingButtonGallery.dart';

class DragAndDrop extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<DragAndDrop> {
  @override
  Widget build(BuildContext context) {
    final CarsImageProvider = Provider.of<ImagesProvider>(context);

    final List<dynamic> InfoCar =
        ModalRoute.of(context).settings.arguments as List;
    final List<dynamic> imageGallery =
        ModalRoute.of(context).settings.arguments as List;

    print('imagen:${imageGallery}');

    return Scaffold(
      drawer: DrawerSide(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(InfoCar[1]['brandName']),
      ),
      body: ReorderableGridView.count(
        crossAxisCount: 1,
        childAspectRatio: 1.5,
        children:
            CarsImageProvider.ImageInfoFavoriteProvider.map((path) => Card(
                  key: ValueKey(path),
                  child: Image.network(path, fit: BoxFit.cover),
                )).toList(),
        onReorder: (oldIndex, newIndex) {
          String path = carsImage.removeAt(oldIndex);
          carsImage.insert(newIndex, path);
          setState(() {});
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_a_photo),
        backgroundColor: Colors.red,
        onPressed: () {
          PickerUtils.pick(context, () {
            print('imagen:${carsImage}');
          });
        },
      ),
    );
  }
}
