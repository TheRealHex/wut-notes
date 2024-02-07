import 'package:flutter/material.dart';

class NoteDetail extends StatefulWidget {
  const NoteDetail({super.key});

  @override
  State<NoteDetail> createState() => _NoteDetailState();
}

class _NoteDetailState extends State<NoteDetail> {
  static final _priorities = ['important!', 'basic'];

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit note'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Title textfield
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: TextField(
              controller: titleController,
              onChanged: (value) {
                debugPrint('title is being added.');
              },
              decoration: InputDecoration(
                  labelText: 'Title',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  )),
            ),
          ),
          // Description textfield
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: TextField(
              controller: descriptionController,
              onChanged: (value) {
                debugPrint('Description is being added.');
              },
              decoration: InputDecoration(
                  labelText: 'Description',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  )),
            ),
          ),
          // Priority dropdown
          DropdownButton(
            items: _priorities.map((String dropDownStringItems) {
              return DropdownMenuItem<String>(
                value: dropDownStringItems,
                child: Text(dropDownStringItems),
              );
            }).toList(),
            value: 'basic',
            onChanged: (valueSelected) {
              setState(() {
                debugPrint(valueSelected);
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Save'),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Delete'),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
