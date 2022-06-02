import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:jbmx_insomnia_flutter/core/values/enviroments.dart';
import '../models/vehicles_info_response.dart';

class ImagesProvider extends ChangeNotifier {
  String _token = Enviroments.TOKEN;
  String _urlImages = Enviroments.IMG_FILE_EVIDENCE;
  int typeId = 8;
  Iterable<Map<dynamic, dynamic>> initial = [];
  int id = 3;
  String _urlInfoCars = Enviroments.INFO_VEHICLES;

  //int Infoid = 1;

  int get idIMage => this.id + 1;

  List<dynamic> ImageCars = [];
  List<dynamic> ImageCarsURL = [];
  List<dynamic> FilesImages = [];
  List<dynamic> FileCarProvider = [];
  List<dynamic> InfoCars = [];
  List<dynamic> ImageFavorite = [];
  List<dynamic> ImageFavoriteURL = [];
  List<dynamic> ImageInfoMatchStar = [];
  List<dynamic> ImageInfoFavoriteProvider = [];
  List<dynamic> ImageInfoFavoriteProviderInfo = [];
  List<dynamic> InfoCarsReversed = [];
  List<dynamic> ImageGallery = [];
  List<dynamic> ImageCarsAll = [];
  List<dynamic> ImageCarsAllURL = [];

  ImagesProvider() {
    this.getImagesVehicles(this.typeId);
    this.getInfoVehicles(this.id);
    getMatchInfoAndCars(this.id);
    getVehiclesAllMap();
  }

  getImagesVehicles(typeId) async {
    final url = Uri.parse('$_urlImages/$typeId');
    final responseImage = await http.get((url), headers: {
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $_token'
    });

    final List<dynamic> ImageCars = json.decode(responseImage.body) as List;

    this.ImageCars = ImageCars;

    this.ImageCars = this
        .ImageCars
        .where((element) => element['referenceId'] == this.id)
        .toList();

    this.ImageCars = this
        .ImageCars
        .map((item) => ({
              ...item['file'],
              'idDB': item['id'],
              'referenceId': item['referenceId'],
              'star:': item['star'],
              'file': item['file'],
              'typeId': item['typeId'],
              'url': Enviroments.FileManagerExposeUrl +
                  'EmployeeDocuments/' +
                  item['file']['name'] +
                  item['file']['extension']
            }))
        .toList();

    this.ImageCars.forEach((element) {
      this.ImageGallery.add(element['url']);

      //print(this.ImageGallery);

      if (ImageCars.where((element) => element['star'] == true)
              .toList()
              .length >
          0) {
        this.ImageFavorite =
            ImageCars.where((element) => element['star'] == true).toList();
      }

      this.ImageFavoriteURL = this
          .ImageFavorite
          .map((item) => (Enviroments.FileManagerExposeUrl +
              'EmployeeDocuments/' +
              item['file']['name'] +
              item['file']['extension']))
          .toList();

      //print(this.ImageFavorite);
    });

    notifyListeners();
  }

  getInfoVehicles(id) async {
    final urlInfo = Uri.parse(_urlInfoCars);
    final responseInfo = await http.get((urlInfo), headers: {
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $_token'
    });

    final List<dynamic> InfoCars = json.decode(responseInfo.body);
    this.InfoCars = InfoCars;
    // this.InfoCars =
    //     this.InfoCars.where((element) => element['id'] == id).toList();

    // this.InfoCarsReversed =
    // InfoCars.reversed.toList();

    this.InfoCars = InfoCars.reversed.toList();

    //print(InfoCars);

    notifyListeners();
  }

  getMatchInfoAndCars(id) async {
    final urlInfo = Uri.parse(_urlInfoCars);
    final responseInfo = await http.get((urlInfo), headers: {
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $_token'
    });

    final List<dynamic> InfoCars = json.decode(responseInfo.body);

    final url = Uri.parse('$_urlImages/$typeId');
    final responseImage = await http.get((url), headers: {
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $_token'
    });

    final List<dynamic> ImageCars = json.decode(responseImage.body) as List;

    ImageInfoFavoriteProvider =
        ImageCars.where((element) => element['referenceId'] == id).toList();
    // ImageInfoFavoriteProvider =
    //     ImageInfoFavoriteProvider.where((element) => element['star'] == true)
    //         .toList();

    this.ImageInfoFavoriteProvider = this
        .ImageInfoFavoriteProvider
        .map((item) => (Enviroments.FileManagerExposeUrl +
            'EmployeeDocuments/' +
            item['file']['name'] +
            item['file']['extension']))
        .toList();

    // ImageInfoFavoriteProviderInfo =
    //     InfoCars.where((element) => element['id'] == id).toList();

    this.ImageInfoMatchStar = [
      ...ImageInfoFavoriteProviderInfo,
      ...ImageInfoFavoriteProvider
    ];

    //this.ImageGallery = [...InfoCars, ...ImageFavoriteURL];

    print(ImageInfoMatchStar);
    //print(ImageInfoFavoriteProvider);
    // print(ImageInfoFavoriteProviderInfo);
    //print(ImageFavoriteURL);
    //print(ImageInfoMatchStar);
    // print(ImageGallery);
    // print(InfoCars);

    notifyListeners();
  }

  getVehiclesAllMap() async {
    final url = Uri.parse('$_urlImages/$typeId');
    final responseImage = await http.get((url), headers: {
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $_token'
    });

    final List<dynamic> ImageCars = json.decode(responseImage.body) as List;

    this.ImageCars = this
        .ImageCarsAll
        .map((item) => ({
              ...item['file'],
              'idDB': item['id'],
              'referenceId': item['referenceId'],
              'star:': item['star'],
              'file': item['file'],
              'typeId': item['typeId'],
              'url': Enviroments.FileManagerExposeUrl +
                  'EmployeeDocuments/' +
                  item['file']['name'] +
                  item['file']['extension']
            }))
        .toList();

    this.ImageCarsAll.forEach((element) {
      this.ImageCarsAllURL.add(element['url']);

      //print(ImageCarsAllURL);
    });

    notifyListeners();
  }

  
}
