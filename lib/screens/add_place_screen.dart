import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/great_places.dart';
import '../widgets/image_input.dart';

class AddPlaceScreen extends StatefulWidget {
  static const routeName = '/add-place';
  const AddPlaceScreen({Key? key}) : super(key: key);

  @override
  State<AddPlaceScreen> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  final _titleController = TextEditingController();
  File? _pickedImage;
  void _selectImage(File image) => _pickedImage = image;
  void _savePlace() {
    if (_titleController.text.isEmpty || _pickedImage == null) return;
    Provider.of<GreatPlaces>(context)
        .addPlace(_titleController.text, _pickedImage!);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a New Place'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  TextField(
                    decoration: const InputDecoration(labelText: 'Title'),
                    controller: _titleController,
                  ),
                  const SizedBox(height: 10),
                  ImageInput(onSelectImage: _selectImage),
                ],
              ),
            ),
          ),
          const Spacer(),
          ElevatedButton.icon(
            onPressed: _savePlace,
            icon: const Icon(Icons.add),
            label: const Text('Add Place'),
            style: ElevatedButton.styleFrom(
              elevation: 0,
              padding: const EdgeInsets.all(15),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              primary: Theme.of(context).colorScheme.secondary,
              onPrimary: Colors.black,
              shape:
                  const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            ),
          )
        ],
      ),
    );
  }
}
