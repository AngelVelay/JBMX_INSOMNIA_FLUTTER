// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../../data/providers/cars.provider.dart';

// class InfoCars extends StatelessWidget {
//   final Map<String, dynamic> infoCars;
//   String id;

//   InfoCars({
//     Key key,
//     this.infoCars,
//     this.id,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     //final InfoProvider = Provider.of<InfoCarsProvider>(context, listen: true);

//     return Container(
//       width: double.infinity,
//       height: 430,
//       color: Colors.grey[350],
//       padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
//       child: Column(children: [
//         Text(
//           'Caracteristicas',
//           textAlign: TextAlign.justify,
//           style: Theme.of(context).textTheme.headline5,
//         ),
//         ListTile(
//           leading: const Icon(Icons.access_time_filled_sharp),
//           title: Text('Año'),
//           subtitle: Text(InfoProvider.InfoCars['origin']),
//         ),
//         ListTile(
//           leading: const Icon(Icons.cloud_circle_rounded),
//           title: Text('Cilindrada'),
//           subtitle: Text(InfoProvider.InfoCars['cylinder'].toString()),
//         ),
//         ListTile(
//           leading: const Icon(Icons.account_balance_rounded),
//           title: Text('Origen'),
//           subtitle: Text(InfoProvider.InfoCars['origin']),
//         ),
//         ListTile(
//           leading: const Icon(Icons.numbers_outlined),
//           title: Text('Numero de Serie'),
//           subtitle: Text(InfoProvider.InfoCars['anio'].toString()),
//         ),
//         ListTile(
//           leading: const Icon(Icons.reduce_capacity_outlined),
//           //trailing: const Icon(Icons.keyboard_arrow_right),
//           title: Text('Capacidad Litros'),
//           subtitle: Text(InfoProvider.InfoCars['liters'].toString()),
//         ),
//         SizedBox(height: 10),
//       ]),
//     );
//   }
// }
