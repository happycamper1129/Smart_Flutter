import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_crop/image_crop.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:jewelery_marketplace/config/colors.dart';
import 'package:jewelery_marketplace/config/constants.dart';
import 'dart:io';

import 'package:permission_handler/permission_handler.dart';

class ProductController {

  Future<String> uploadProfileImage(context , uploadFolder) async {
    try {
     // showSimpleLoader(context);
      List<String> extentions = ['png', 'jpeg'];
      await Permission.photos.request();
      print(await Permission.notification.status.isGranted);
      if (await Permission.photos.status.isGranted) {
        FilePickerResult? result = await FilePicker.platform.pickFiles(
          type: FileType.image,
          allowCompression: true,

        );

        if (result != null) {

          PlatformFile file = result.files.first;
          File? file1 = File(result.files.single.path ?? '');
          // final sample = await ImageCrop.sampleImage(
          //   file: file1,
          //   preferredSize: (2000 / scale).round(),
          // );
          //
          // final newfile = await ImageCrop.cropImage(
          //   file: sample,
          //   area: area!,
          // );

          File? cropedFile = await _cropImage(file1);

          var snapshot = await FirebaseStorage.instance
              .ref(auth.currentUser!.uid)
              .child(uploadFolder)
              .putFile(cropedFile!);
          var downloadURL = await snapshot.ref.getDownloadURL();
          print('STORE ID: ${downloadURL}');
          print('Storing in store ref');
          Navigator.of(context).pop();
          return downloadURL;
        } else {
          Navigator.of(context).pop();
          print('No pdf selected.');
        }
      }
    } catch (e) {
      print('upload image error: $e');
      Navigator.of(context).pop();
      return 'error';
    }
    return '';
  }


  // Future<void> _crop() async {
  //   final scale = cropKey.currentState.scale;
  //   final area = cropKey.currentState.area;
  //   if (area == null) {
  //     // cannot crop, widget is not setup
  //     return;
  //   }
  //
  //   // scale up to use maximum possible number of pixels
  //   // this will sample image in higher resolution to make cropped image larger
  //   final sample = await ImageCrop.sampleImage(
  //     file: _file,
  //     preferredSize: (2000 / scale).round(),
  //   );
  //
  //   final file = await ImageCrop.cropImage(
  //     file: sample,
  //     area: area,
  //   );
  //
  //   sample.delete();
  //
  //   _lastCropped?.delete();
  //   _lastCropped = file;
  //
  //   debugPrint('$file');
  // }

  Future<File?> _cropImage( File imageFile) async {
    File? croppedFile = await ImageCropper().cropImage(
        sourcePath: imageFile.path,
        aspectRatioPresets: Platform.isAndroid
            ? [
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.ratio4x3,
          CropAspectRatioPreset.ratio16x9
        ] : [
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.ratio4x3,
          CropAspectRatioPreset.ratio5x3,
          CropAspectRatioPreset.ratio5x4,
          CropAspectRatioPreset.ratio7x5,
          CropAspectRatioPreset.ratio16x9
        ],
        androidUiSettings: AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: kColorPrimary,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        iosUiSettings: IOSUiSettings(
          title: 'Cropper',
        ));
    if (croppedFile != null) {
      imageFile = croppedFile;

      return croppedFile;
    }
    return null;
  }

}
