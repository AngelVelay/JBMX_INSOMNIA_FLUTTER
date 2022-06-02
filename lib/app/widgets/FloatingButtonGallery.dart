import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

class EvidenceOption {
  String name;
  Function action;

  EvidenceOption(this.name, this.action);
}

class FileManager {}

class PickerUtils {
  static List<EvidenceOption> _evidenceOptions = <EvidenceOption>[
    EvidenceOption('Capturar foto', _takePhoto),
    EvidenceOption('Seleccionar imagen', _pickImage),
    EvidenceOption('Capturar video', _takeVideo),
    EvidenceOption('Seleccionar video', _pickVideo),
    //EvidenceOption('Grabar audio', _recordAudio),
  ];

  static pick(BuildContext context, Function onComplete) async {
    showCupertinoModalPopup<FileManager>(
      context: context,
      builder: (BuildContext context) => _actionSheet(context),
    );
  }

  static Widget _actionSheet(BuildContext context) {
    return CupertinoActionSheet(
        title: Text('¿Que quieres agregar?'),
        message: Text('Selecciona una opcion'),
        actions: _evidenceOptions.map((e) {
          return CupertinoActionSheetAction(
              child: Text(e.name), onPressed: () => e.action(context));
        }).toList(),
        cancelButton: CupertinoActionSheetAction(
          child: Text('Cancelar'),
          onPressed: () {
            Navigator.pop(context);
          },
        ));
  }

  static _takePhoto(BuildContext context) async {
    final ImagePicker _picker = ImagePicker();
    final XFile image = await _picker.pickImage(source: ImageSource.camera);
    Navigator.pop(context);
  }

  static _pickImage(BuildContext context) async {
    final ImagePicker _picker = ImagePicker();
    final XFile image = await _picker.pickImage(source: ImageSource.gallery);
    Navigator.pop(context);
  }

  static _takeVideo(BuildContext context) async {
    final ImagePicker _picker = ImagePicker();
    final XFile image = await _picker.pickVideo(source: ImageSource.camera);
    Navigator.pop(context);
  }

  static _pickVideo(BuildContext context) async {
    final ImagePicker _picker = ImagePicker();
    final XFile image = await _picker.pickVideo(source: ImageSource.gallery);
    Navigator.pop(context);
  }

  static Widget _audioRecorderWidget() {
    return Center(child: Text('Grabando...'));
  }
}
