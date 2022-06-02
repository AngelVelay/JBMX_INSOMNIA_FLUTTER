
// import 'dart:convert';

// class VehiclesImages {
//   VehiclesImages({
//     this.referenceId,
//     this.star,
//     this.orderFile,
//     this.typeId,
//     this.type,
//     this.fileId,
//     this.file,
//     this.id,
//   });

//   int referenceId;
//   bool star;
//   int orderFile;
//   int typeId;
//   dynamic type;
//   int fileId;
//   FileElement file;
//   int id;

//   factory VehiclesImages.fromJson(String str) =>
//       VehiclesImages.fromMap(json.decode(str));

//   String toJson() => json.encode(toMap());

//   factory VehiclesImages.fromMap(Map<String, dynamic> json) => VehiclesImages(
//         referenceId: json["referenceId"],
//         star: json["star"],
//         orderFile: json["orderFile"],
//         typeId: json["typeId"],
//         type: json["type"],
//         fileId: json["fileId"],
//         file: FileElement.fromMap(json["file"]),
//         id: json["id"],
//       );

//   Map<String, dynamic> toMap() => {
//         "referenceId": referenceId,
//         "star": star,
//         "orderFile": orderFile,
//         "typeId": typeId,
//         "type": type,
//         "fileId": fileId,
//         "file": file.toMap(),
//         "id": id,
//       };
// }

// // class FileType {
// //   FileType({
// //     this.files,
// //     this.generateFolder,
// //     this.folder,
// //     this.name,
// //     this.isActive,
// //     this.id,
// //   });

// //   List<FileElement> files;
// //   bool generateFolder;
// //   Folder folder;
// //   Folder name;
// //   bool isActive;
// //   int id;

// //   factory FileType.fromJson(String str) => FileType.fromMap(json.decode(str));

// //   String toJson() => json.encode(toMap());

// //   factory FileType.fromMap(Map<String, dynamic> json) => FileType(
// //         files: List<FileElement>.from(
// //             json["files"].map((x) => FileElement.fromMap(x))),
// //         generateFolder: json["generateFolder"],
// //         folder: folderValues.map[json["folder"]],
// //         name: folderValues.map[json["name"]],
// //         isActive: json["isActive"],
// //         id: json["id"],
// //       );

// //   Map<String, dynamic> toMap() => {
// //         "files": List<dynamic>.from(files.map((x) => x.toMap())),
// //         "generateFolder": generateFolder,
// //         "folder": folderValues.reverse[folder],
// //         "name": folderValues.reverse[name],
// //         "isActive": isActive,
// //         "id": id,
// //       };
// // }

// // class FileElement {
// //   FileElement({
// //     this.name,
// //     this.realName,
// //     this.extension,
// //     this.mimeType,
// //     this.fileTypeId,
// //     this.fileType,
// //     this.reference,
// //     this.folder,
// //     this.id,
// //   });

// //   String name;
// //   RealName realName;
// //   Extension extension;
// //   MimeType mimeType;
// //   int fileTypeId;
// //   FileType fileType;
// //   String reference;
// //   Folder folder;
// //   int id;

// //   factory FileElement.fromJson(String str) =>
// //       FileElement.fromMap(json.decode(str));

// //   String toJson() => json.encode(toMap());

// //   factory FileElement.fromMap(Map<String, dynamic> json) => FileElement(
// //         name: json["name"],
// //         realName: realNameValues.map[json["realName"]],
// //         extension: extensionValues.map[json["extension"]],
// //         mimeType: mimeTypeValues.map[json["mimeType"]],
// //         fileTypeId: json["fileTypeId"],
// //         fileType: json["fileType"] == null
// //             ? null
// //             : FileType.fromMap(json["fileType"]),
// //         reference: json["reference"],
// //         folder: folderValues.map[json["folder"]],
// //         id: json["id"],
// //       );

// //   Map<String, dynamic> toMap() => {
// //         "name": name,
// //         "realName": realNameValues.reverse[realName],
// //         "extension": extensionValues.reverse[extension],
// //         "mimeType": mimeTypeValues.reverse[mimeType],
// //         "fileTypeId": fileTypeId,
// //         "fileType": fileType == null ? null : fileType.toMap(),
// //         "reference": reference,
// //         "folder": folderValues.reverse[folder],
// //         "id": id,
// //       };
// // }
