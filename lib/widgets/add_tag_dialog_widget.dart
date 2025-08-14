import 'package:flutter/material.dart';

class AddTagDialog extends StatefulWidget {
  const AddTagDialog({super.key});

  @override
  AddTagDialogState createState() => AddTagDialogState();
}

class AddTagDialogState extends State<AddTagDialog> {
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add Tag'),
      content: TextField(
        controller: _nameController,
        decoration: const InputDecoration(labelText: 'Tag Name'),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            final tagName = _nameController.text;
            if (tagName.isNotEmpty) {
              // Add tag logic here
              Navigator.of(context).pop(tagName);
            }
          },
          child: const Text('Add'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }
}
