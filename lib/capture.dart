import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class CapturePage extends StatefulWidget {
  @override
  _CapturePageState createState() => _CapturePageState();
}

class _CapturePageState extends State<CapturePage> {
  final picker = ImagePicker();
  String? _imageUrl;

  @override
  void initState() {
    super.initState();
    openCamera();
  }

  Future<void> openCamera() async {
    final XFile? pickedFile = await picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        _imageUrl = pickedFile.path;
      });
      print(_imageUrl);
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final imageHeight = screenHeight * 0.4;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF103F2B),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Center(
                child: _imageUrl == null
                    ? Text('No image selected.')
                    : Card(
                        elevation: 4,
                        child: Container(
                          width: screenWidth,
                          height: imageHeight,
                          child: Image.file(File(_imageUrl!), fit: BoxFit.cover),
                        ),
                      ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 4,
              color: const Color(0xFF103F2B), // Set card background color to green
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Image name',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Info on how to recycle the image',
                      style: TextStyle(fontSize: 18, color: Colors.white), // Set text color to white
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF103F2B),
        onPressed: openCamera,
        tooltip: 'Capture Image',
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}
