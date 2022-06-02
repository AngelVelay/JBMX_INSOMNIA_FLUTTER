import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

Color primaryGreen = Color(0xff416d6d);
List<BoxShadow> shadowList = [
  const BoxShadow(
      color: Color(0xE0E0E0E0), blurRadius: 30, offset: Offset(0, 10))
];

List<Map> categories = [
  {'name': 'Bugatti', 'iconPath': 'images/bugatti.png'},
  {'name': 'BMW', 'iconPath': 'images/bmw.png'},
  {'name': 'Ferrari', 'iconPath': 'images/ferrari.png'},
  {'name': 'Porsche', 'iconPath': 'images/porsche.png'},
  {'name': 'Audi', 'iconPath': 'images/audi.png'},
  {'name': 'Ford', 'iconPath': 'images/ford.png'}
  //{'name':'Ver Mas','iconPath':}
];

List<Map> catalogos = [
  {'name': 'Accesorios', 'iconPath': 'images/catalogos/accesorios.png'},
  {'name': 'Equipamineto', 'iconPath': 'images/catalogos/equipamiento.png'},
  {'name': 'Perspectiva', 'iconPath': 'images/catalogos/perspectiva.png'},
  {
    'name': 'Especificaciones',
    'iconPath': 'images/catalogos/especificaciones.png'
  },
  {
    'name': 'Tipo de Vehiculo',
    'iconPath': 'images/catalogos/tipo_vehiculo.png'
  },
  {'name': 'Manteniemiento', 'iconPath': 'images/catalogos/mantenimiento.png'}
];

List<String> imagePaths = [
  'https://images.unsplash.com/photo-1524024973431-2ad916746881?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
  'https://images.unsplash.com/photo-1444845026749-81acc3926736?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=864&q=80',
  'https://images.unsplash.com/photo-1535591273668-578e31182c4f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
  'https://images.unsplash.com/photo-1504472478235-9bc48ba4d60f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80',
  'https://images.unsplash.com/photo-1520301255226-bf5f144451c1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=873&q=80',
  'https://images.unsplash.com/photo-1514503612056-e3f673b3f3bd?ixlib=rb-1.2.1&ixid=MnwxMjA3fD',
  'https://images.unsplash.com/photo-1447752875215-b2761acb3c5d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
  'https://images.unsplash.com/photo-1580777187326-d45ec82084d3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80',
  'https://images.unsplash.com/photo-1531804226530-70f8004aa44e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80',
  'https://images.unsplash.com/photo-1465056836041-7f43ac27dcb5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80',
  'https://images.unsplash.com/photo-1573553256520-d7c529344d67?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
];

List<String> carsImage = [
  'http://201.151.139.54:8084/FileManager/EmployeeDocuments/0df346bc-c5f2-4472-86be-0a60f1ca48c0.jpg',
  'http://201.151.139.54:8084/FileManager/EmployeeDocuments/394a1949-0c2c-4d74-807b-c7fbde4c9395.jpg',
  'http://201.151.139.54:8084/FileManager/EmployeeDocuments/6bf40fff-dd39-4465-ac7a-234b67b8face.jpg',
  'http://201.151.139.54:8084/FileManager/EmployeeDocuments/b7dee80d-ea4e-404f-9386-5d85421f5189.jpg',
  'http://201.151.139.54:8084/FileManager/EmployeeDocuments/7032f7ed-8dd7-4013-b5d9-9018094b5596.jpg',
  'http://201.151.139.54:8084/FileManager/EmployeeDocuments/1af440af-544f-4021-8058-b8eb1304e1c9.png'
];
