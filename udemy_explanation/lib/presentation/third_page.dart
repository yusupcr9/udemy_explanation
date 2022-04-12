import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  File? _image;
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page"),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.grey,
            child: (_image != null) ? Image.file(_image!) : Text("No Image"),
          ),
          ElevatedButton(
            onPressed: () async {
              // Capture a photo
              try {
                final XFile? photo = await _picker.pickImage(
                    source: ImageSource.camera, imageQuality: 50);

                setState(() {
                  _image =
                      File(photo!.path); // Null Operator used on a null value
                });
              } catch (e) {
                print(e.toString());
              }
            },
            child: Text("Get Image"),
          ),
        ],
      ),
    );
  }
}
