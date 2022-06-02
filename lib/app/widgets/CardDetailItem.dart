import 'package:flutter/material.dart';
import 'package:jbmx_insomnia_flutter/data/data.dart';

class DetailItemsCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 30),
        width: double.infinity,
        height: 180,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: catalogos.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: 120,
                height: 100,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: FadeInImage(
                        placeholder: AssetImage('assets/no-image.jpg'),
                        image: NetworkImage(catalogos[index]['iconPath']),
                        height: 80,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      catalogos[index]['name'],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              );
              ;
            }));
  }
}

// class ItemCard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 10),
//       width: 110,
//       height: 100,
//       child: Column(
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(20),
//             child: FadeInImage(
//               placeholder: AssetImage('assets/no-image.jpg'),
//               image: NetworkImage(catalogos[index]['iconPath']),
//               height: 140,
//               width: 100,
//               fit: BoxFit.cover,
//             ),
//           ),
//           const SizedBox(height: 3),
//           Text(
//             catalogos[index]['name'],
//             maxLines: 2,
//             overflow: TextOverflow.ellipsis,
//             textAlign: TextAlign.center,
//           )
//         ],
//       ),
//     );
//   }
// }
