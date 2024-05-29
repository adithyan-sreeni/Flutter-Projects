import 'package:flutter/material.dart';
import 'package:notes_app/model/note_model.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key, required this.note, required this.index});

  final Note note;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 12, 10, 10),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 0, 0, 0.917),
        toolbarHeight: 100,
        title: const Text(
          'View Note',
          style: TextStyle(
            color: Colors.deepOrange,
            fontFamily: 'Roboto-Bold',
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              note.title,
              style: const TextStyle(
                fontSize: 28,
                color: Color.fromRGBO(255, 69, 51, 12),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              note.body,
              style: const TextStyle(
                fontSize: 18,
                color: Color.fromRGBO(255, 69, 51, 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
