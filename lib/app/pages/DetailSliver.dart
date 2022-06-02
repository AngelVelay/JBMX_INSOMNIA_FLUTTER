// import 'package:flutter/material.dart';
// import 'package:jbmx_insomnia_flutter/app/pages/DetailPage.dart';

// class DetailSliver extends StatelessWidget {
//   const DetailSliver({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             shape: ContinuousRectangleBorder(
//                 borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(80),
//                     bottomRight: Radius.circular(80))),
//             floating: true,
//             pinned: true,
//             snap: true,
//             expandedHeight: 250,
//             flexibleSpace: FlexibleSpaceBar(
//                 centerTitle: true,
//                 title: Container(
//                   width: double.infinity,
//                   alignment: Alignment.bottomCenter,
//                   child: Text(
//                     'Bugatti Veyron Super Sport',
//                     style: TextStyle(
//                       fontSize: 16.0,
//                     ),
//                   ),
//                 ),
//                 background: FadeInImage(
//                   placeholder: AssetImage('images/spinner_loading.gif'),
//                   image: AssetImage('images/auto_test.webp'),
//                   fit: BoxFit.cover,
//                 )),
//           ),
//           SliverList(
//             delegate: SliverChildListDelegate([
//               DetailPage(),
//             ]),
//           ),
//         ],
//       ),
//     );
//   }
// }
