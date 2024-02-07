import 'package:flutter/material.dart';
import 'package:notes/screens/note_detail.dart';
import 'screens/note_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      // home: const NoteList(),
      // home: NoteDetail(),
      routes: {
        '/': (_) => const NoteList(),
        '/details': (_) => const NoteDetail(),
      },
    );
  }
}
