import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';

class UploadPhoto extends StatefulWidget{
  const UploadPhoto({super.key});

  @override
  UploadPhotoState createState() {
    return UploadPhotoState();
  }
}

class UploadPhotoState extends State<UploadPhoto>{
  List<XFile>? _imageFileList;

  void _setImageFileListFromFile(XFile? value){
    _imageFileList = value == null ? null : <XFile>[value];
  }

  dynamic _pickImageError;
  String? _retrieveDataError;
  final ImagePicker _picker = ImagePicker();

  Future<void> _onImageButtonPressed(ImageSource source, {BuildContext? context}) async{
      try{
        final XFile? pickedFile = await _picker.pickImage(source: source,);
        setState(() {
          _setImageFileListFromFile(pickedFile);
        });
      }catch(e){
        setState(() {
          _pickImageError = e;
        });
      }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: <Widget> [
          FloatingActionButton(
          onPressed: (){
            _onImageButtonPressed(ImageSource.gallery, context: context);
          },
          heroTag: 'image0',
          tooltip: 'Pick image from gallery',
          child: const Icon(Icons.photo),
        ),
        FloatingActionButton(
          onPressed: (){
            _onImageButtonPressed(ImageSource.camera, context: context);
          },
          heroTag: 'image1',
          tooltip: 'Take a photo',
          child: const Icon(Icons.camera_alt),
        )
        ]
      )
    );
  }


}