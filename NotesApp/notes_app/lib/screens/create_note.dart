import 'package:flutter/material.dart';
import 'package:notes_app/model/note_model.dart';

class create_note extends StatefulWidget {
  const create_note({super.key, required this.onNewNoteCreated});

  final Function(Note) onNewNoteCreated;

  @override
  State<create_note> createState() => _create_noteState();
}

class _create_noteState extends State<create_note> {
  final titleController = TextEditingController();
  final bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const Text(
          'Add Notes',
          style: TextStyle(
            color: Colors.deepOrange,
            fontFamily: 'Roboto-Bold',
          ),
        ),
        backgroundColor: const Color.fromRGBO(0, 0, 0, 0.917),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextFormField(
              controller: titleController,
              style: const TextStyle(
                fontSize: 28,
                color: Color.fromRGBO(255, 69, 51, 12),
              ),
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Tiitle',
                  hintStyle:
                      TextStyle(color: Color.fromRGBO(255, 68, 51, 0.466))),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: bodyController,
              style: const TextStyle(
                fontSize: 18,
                color: Color.fromRGBO(255, 69, 51, 12),
              ),
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Content',
                  hintStyle:
                      TextStyle(color: Color.fromRGBO(255, 68, 51, 0.466))),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (titleController.text.isEmpty) {
            return;
          }
          if (bodyController.text.isEmpty) {
            return;
          }
          final title = titleController.text;
          final body = bodyController.text;

          final note = Note(
            title: title,
            body: body,
          );

          widget.onNewNoteCreated(note);
          Navigator.of(context).pop();
        },
        backgroundColor: const Color.fromRGBO(255, 69, 51, 1),
        child: const Icon(
          Icons.save,
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 12, 10, 10),
    );
  }
}
