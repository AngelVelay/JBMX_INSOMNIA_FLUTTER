import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reorderable_grid_view/reorderable_grid_view.dart';

//import '../../data/data.dart';
import '../../data/data.dart';
import '../../data/providers/cars.provider.dart';

class DragAndDrop extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<DragAndDrop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReorderableGridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.5,
        children: imagePaths
            .map((String path) => Card(
                  key: ValueKey(path),
                  child: Image.network(path),
                ))
            .toList(),
        onReorder: (oldIndex, newIndex) {
          String path = imagePaths.removeAt(oldIndex);
          imagePaths.insert(newIndex, path);
          setState(() {});
        },
      ),
    );
  }
}
