import 'package:flutter/material.dart';
import 'package:jbmx_insomnia_flutter/data/models/vehicles_info_response.dart';
import 'package:provider/provider.dart';

import '../../data/data.dart';
import '../../data/providers/cars.provider.dart';
import '../pages/DetailPage.dart';

class CardHomeWidget extends StatelessWidget {
  final List<dynamic> images;
  final List<dynamic> infoCars;
  final List<dynamic> imageGallery;
  int id = 1;

  CardHomeWidget({
    Key key,
    @required this.images,
    @required this.id,
    @required this.infoCars,
    @required this.imageGallery,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 200,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'details',
                    arguments: [
                      images[index],
                      infoCars[index],
                      imageGallery[index]
                    ]),
                child: Row(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.blueGrey[300],
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: shadowList,
                            ),
                            margin: EdgeInsets.only(top: 50),
                          ),
                          Align(
                            child: Hero(
                                tag: index,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: FadeInImage(
                                      width: double.infinity,
                                      height: 210,
                                      fit: BoxFit.cover,
                                      placeholder: AssetImage(
                                        'images/spinner_loading.gif',
                                      ),
                                      image: NetworkImage(images[index])),
                                )),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        child: ListTile(
                      title: Text(
                        infoCars[index]['brandName'].toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        infoCars[index]['anio'].toString(),
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ))
                  ],
                ),
              ),
            );
          }),
    );
  }
}
