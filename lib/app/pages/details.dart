// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../../data/providers/cars.provider.dart';
// import '../widgets/CardDetailItem.dart';
// import '../widgets/Drawer_Side.dart';
// import '../widgets/InfoCars.dart';
// // import 'package:peliculas/models/models.dart';
// // import 'package:peliculas/widgets/widgets.dart';

// class DetailsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final InfoProvider = Provider.of<InfoCarsProvider>(context, listen: true);

//     return Scaffold(
//       drawer: DrawerSide(),
//       body: CustomScrollView(
//         slivers: [
//           _CustomAppBar(),
//           SliverList(
//               delegate: SliverChildListDelegate([
//             _PosterAndTitle(),
//             InfoCars(),
//             DetailItemsCards(),
//           ]))
//         ],
//       ),
//     );
//   }
// }

// class _CustomAppBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final InfoProvider = Provider.of<InfoCarsProvider>(context, listen: true);
//     print(InfoProvider.InfoCars);
//     return SliverAppBar(
//       backgroundColor: Colors.black,
//       expandedHeight: 200,
//       floating: false,
//       pinned: true,
//       flexibleSpace: FlexibleSpaceBar(
//         centerTitle: true,
//         titlePadding: EdgeInsets.all(0),
//         title: Container(
//           width: double.infinity,
//           alignment: Alignment.bottomCenter,
//           padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
//           color: Colors.black12,
//           child: Text(
//             (InfoProvider.InfoCars['brandName']),
//             style: TextStyle(fontSize: 16),
//             textAlign: TextAlign.center,
//           ),
//         ),
//         background: FadeInImage(
//           placeholder: AssetImage('images/bugatti_test.jpg'),
//           image: AssetImage('images/bugatti_test.jpg'),
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }
// }

// class _PosterAndTitle extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final TextTheme textTheme = Theme.of(context).textTheme;
//     final size = MediaQuery.of(context).size;

//     return Container(
//       margin: EdgeInsets.only(top: 20),
//       padding: EdgeInsets.symmetric(horizontal: 20),
//       child: Row(
//         children: [
//           Hero(
//             tag: 1,
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(20),
//               child: FadeInImage(
//                 placeholder: AssetImage('assets/no-image.jpg'),
//                 image: NetworkImage('images/bugatti.png'),
//                 height: 120,
//               ),
//             ),
//           ),
//           SizedBox(width: 20),
//           ConstrainedBox(
//             constraints: BoxConstraints(maxWidth: size.width - 190),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text('Bugatti Chiron',
//                     style: textTheme.headline5,
//                     overflow: TextOverflow.ellipsis,
//                     maxLines: 2),
//                 Text('Modelo 2008',
//                     style: textTheme.subtitle1,
//                     overflow: TextOverflow.ellipsis,
//                     maxLines: 2),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
