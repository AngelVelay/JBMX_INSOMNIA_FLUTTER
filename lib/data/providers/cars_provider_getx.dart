// import 'dart:convert';

// import 'package:get/get_connect.dart';
// import 'package:http/http.dart' as http;

// import '../../core/values/enviroments.dart';

// class CarsProvider extends GetConnect {
//   String _token = Enviroments.TOKEN;
//   String _baseUrl = Enviroments.API_URL;
//   String _urlImages = Enviroments.IMG_FILE_EVIDENCE;
//   int typeId = 8;
//   Iterable<Map<dynamic, dynamic>> initial = [];
//   List<dynamic> images = [];
//   int id = 1;
//   String _urlInfoCars = Enviroments.INFO_VEHICLES;
//   int Infoid = 1;

//   List<dynamic> ImageCars = [];
//   List<dynamic> ImageCarsURL = [];
//   List<dynamic> FilesImages = [];
//   List<dynamic> FileCarProvider = [];
//   Map<String, dynamic> InfoCars = {};

//   @override
//   void onInit() {
//     // TODO: implement onInit

//     getImagesVehicles(typeId);
//     print('onInit');
//   }

//   Future<List<dynamic>> getImagesVehicles(typeId) async {
//     final url = Uri.parse('$_urlImages/$typeId');
//     var responseImage = await http.get((url), headers: {
//       'Content-Type': 'application/json; charset=UTF-8',
//       'Authorization': 'Bearer $_token'
//     });

//     final List<dynamic> ImageCars = json.decode(responseImage.body) as List;

//     this.ImageCars = ImageCars;

//     this.ImageCars =
//         this.ImageCars.where((element) => element['referenceId'] == 1).toList();

//     this.ImageCars = this
//         .ImageCars
//         .map((item) => ({
//               ...item['file'],
//               'idDB': item['id'],
//               'referenceId': item['referenceId'],
//               'file': item['file'],
//               'typeId': item['typeId'],
//               'url': Enviroments.FileManagerExposeUrl +
//                   'EmployeeDocuments/' +
//                   item['file']['name'] +
//                   item['file']['extension']
//             }))
//         .toList();

//     this.ImageCars.forEach((element) {
//       this.ImageCarsURL.add(element['url']);
//     });

//     print(ImageCarsURL);

//     return ImageCarsURL;
//   }
// }
