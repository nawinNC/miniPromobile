import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:image_picker/image_picker.dart';
import 'package:projectt/Homepage.dart';

class Camera extends StatefulWidget {
  const Camera({super.key});

  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {

  File? imageFile;

  void _getFromCamera() async{
    XFile? PickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxHeight: 1080,
      maxWidth: 1080,
      );
      setState(() {
        imageFile = File(PickedFile!.path);
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 50,),
          imageFile != null ?
          Container(
            child: Image.file(imageFile!),
          ) :
              Container(
                child: Icon(
                  Icons.camera_enhance_rounded,
                  color: Colors.black,
                  size: MediaQuery.of(context).size.width * .6,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: ElevatedButton(
                  child: Text('Take Photo'),
                  onPressed: () {
                    _getFromCamera();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.pinkAccent),
                    padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                  ),
                ), 
             ),
        ],
      ),
    );
  }
}
