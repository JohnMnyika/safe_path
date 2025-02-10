import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ReportIncidentScreen extends StatefulWidget {
  @override
  _ReportIncidentScreenState createState() => _ReportIncidentScreenState();
}

class _ReportIncidentScreenState extends State<ReportIncidentScreen> {
  final _formKey = GlobalKey<FormState>();
  final _descriptionController = TextEditingController();
  File? _image;

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  void _submitReport() {
    if (_formKey.currentState!.validate()) {
      // Submit the report
      print('Description: ${_descriptionController.text}');
      if (_image != null) {
        print('Image path: ${_image!.path}');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Report Incident'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(labelText: 'Description'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a description';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              _image == null
                  ? ElevatedButton(
                      onPressed: _pickImage,
                      child: Text('Take Photo'),
                    )
                  : Image.file(_image!),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitReport,
                child: Text('Submit Report'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}