import 'package:flutter/material.dart';

class NoteDetail extends StatefulWidget {
  const NoteDetail({
    Key? key,
    required this.appBarTitle,
  }) : super(key: key);

  final String appBarTitle;
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
        title: Text(widget.appBarTitle),
      ),
      body: Column(
        children: [
          textField('Title', titleController, 1),
          textField('Description', descriptionController, 8),
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
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
            child: widget.appBarTitle == 'Edit Note'
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      saveBtn(),
                      const SizedBox(width: 20),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Delete'),
                        ),
                      )
                    ],
                  )
                : Row(
                    children: [
                      saveBtn(),
                    ],
                  ),
          )
        ],
      ),
    );
  }

  Expanded saveBtn() {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Save'),
      ),
    );
  }

  Padding textField(String data, TextEditingController controller, int lines) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: TextField(
        maxLines: lines,
        controller: controller,
        onChanged: (value) {
          // debugPrint('title is being added.');
        },
        decoration: InputDecoration(
            labelText: data,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            )),
      ),
    );
  }
}
