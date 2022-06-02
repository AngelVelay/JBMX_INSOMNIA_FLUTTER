// To parse this JSON data, do
//
//     final infoVehicles = infoVehiclesFromMap(jsonString);

import 'dart:convert';

class InfoVehicles {
  InfoVehicles({
    this.id,
    this.model,
    this.version,
    this.color,
    this.origin,
    this.cylinders,
    this.cylinder,
    this.nameColor,
    this.anio,
    this.doors,
    this.liters,
    this.capacity,
    this.weight,
    this.serial,
    this.fuelTypeId,
    this.fuelTypeName,
    this.brandId,
    this.brandName,
    this.isActive,
    this.vehicleModelId,
    this.vehicleModelName,
    this.isAssignment,
  });

  int id;
  String model;
  String version;
  String color;
  String origin;
  int cylinders;
  String cylinder;
  String nameColor;
  int anio;
  int doors;
  int liters;
  int capacity;
  int weight;
  String serial;
  int fuelTypeId;
  String fuelTypeName;
  int brandId;
  String brandName;
  bool isActive;
  int vehicleModelId;
  String vehicleModelName;
  bool isAssignment;

  factory InfoVehicles.fromJson(String str) =>
      InfoVehicles.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory InfoVehicles.fromMap(Map<String, dynamic> json) => InfoVehicles(
        id: json["id"],
        model: json["model"],
        version: json["version"],
        color: json["color"],
        origin: json["origin"],
        cylinders: json["cylinders"],
        cylinder: json["cylinder"],
        nameColor: json["nameColor"],
        anio: json["anio"],
        doors: json["doors"],
        liters: json["liters"],
        capacity: json["capacity"],
        weight: json["weight"],
        serial: json["serial"],
        fuelTypeId: json["fuelTypeId"],
        fuelTypeName: json["fuelTypeName"],
        brandId: json["brandId"],
        brandName: json["brandName"],
        isActive: json["isActive"],
        vehicleModelId: json["vehicleModelId"],
        vehicleModelName: json["vehicleModelName"],
        isAssignment: json["isAssignment"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "model": model,
        "version": version,
        "color": color,
        "origin": origin,
        "cylinders": cylinders,
        "cylinder": cylinder,
        "nameColor": nameColor,
        "anio": anio,
        "doors": doors,
        "liters": liters,
        "capacity": capacity,
        "weight": weight,
        "serial": serial,
        "fuelTypeId": fuelTypeId,
        "fuelTypeName": fuelTypeName,
        "brandId": brandId,
        "brandName": brandName,
        "isActive": isActive,
        "vehicleModelId": vehicleModelId,
        "vehicleModelName": vehicleModelName,
        "isAssignment": isAssignment,
      };
}
