import 'package:flutter/material.dart';

class NoteList extends StatefulWidget {
  const NoteList({super.key});

  @override
  State<NoteList> createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
      ),
      body: _getNoteListView(),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          debugPrint('fab clicked.');
        },
        tooltip: 'Add Note',
        child: const Icon(Icons.add),
      ),
    );
  }

  ListView _getNoteListView() {
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Card(
            color: Colors.white,
            elevation: 1.0,
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.black87,
              ),
              title: const Text('Dummy Title'),
              subtitle: const Text('Dummy date'),
              trailing: IconButton(
                  onPressed: () {
                    debugPrint('delete clicked.');
                  },
                  icon: const Icon(Icons.delete)),
              onTap: () {
                debugPrint('ListTile clicked.');
                Navigator.pushNamed(context, '/details');
              },
            ),
          ),
        );
      },
    );
  }
}
