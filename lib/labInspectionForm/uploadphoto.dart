import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';

class UploadPhoto extends StatefulWidget {
  const UploadPhoto({super.key});

  @override
  UploadPhotoState createState() {
    return UploadPhotoState();
  }
}

class UploadPhotoState extends State<UploadPhoto> {
  // void _setImageFileListFromFile(XFile? value) {
  //   _imageFileList = value == null ? null : <XFile>[value];
  // }

  String imageUrl = 'https://i.imgur.com/sUFH1Aq.png';

  Future<void> _onImageButtonPressed(ImageSource source) async {
    final firebaseStorage = FirebaseStorage.instance;
    final ImagePicker picker = ImagePicker();
    XFile? image;
    // await Permission.photos.request();

    // var permissionStatus = await Permission.photos.status;

    // if (permissionStatus.isGranted) {
    image = await picker.pickImage(source: source);
    var file = File(image!.path);
    String fileName = basename(file.path);
    if (image != null) {
      var snapshot =
          await firebaseStorage.ref().child('uploads/$fileName').putFile(file);
      var downloadUrl = await snapshot.ref.getDownloadURL();
      setState(() {
        imageUrl = downloadUrl;
      });
    } else {
      print('No image path received');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextButton(
            onPressed: () {
              _onImageButtonPressed(ImageSource.camera);
            },
            child: Container(
              color: Colors.blue,
              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 8),
              child: const Icon(Icons.camera_alt, color: Colors.white),
            )));
  }
}
