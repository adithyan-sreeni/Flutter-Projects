import 'package:flutter/material.dart';
import 'package:notes_app/model/note_model.dart';

class NoteView extends StatelessWidget {
  const NoteView(
      {super.key,
      required this.note,
      required this.index,
      required this.onNoteDeleted});

  final Note note;
  final int index;
  final Function onNoteDeleted;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(255, 69, 51, 1),
        foregroundColor: Colors.black,
        onPressed: () {
          // Navigator.pop(context, index);
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Delete Note'),
                content:
                    const Text('Are you sure you want to delete this note?'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      onNoteDeleted(index);
                      Navigator.pop(context);
                    },
                    child: const Text('Delete'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'No'),
                    child: const Text('Cancel'),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.delete),
      ),
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
