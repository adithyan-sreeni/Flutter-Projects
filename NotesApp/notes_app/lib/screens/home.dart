import 'package:flutter/material.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/screens/create_note.dart';
import 'package:notes_app/widgets/note_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Note> notes = List.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: const Color.fromARGB(255, 12, 10, 10),
        appBar: AppBar(
          toolbarHeight: 100,
          title: const Text(
            'Notes',
            style: TextStyle(
                color: Colors.deepOrange,
                fontFamily: "Roboto-Bold",
                fontSize: 35),
          ),
          backgroundColor: const Color.fromRGBO(0, 0, 0, 0.917),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.sort,
                color: Color.fromRGBO(255, 69, 51, 1),
              ),
            )
          ],
        ),
        body: ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return NoteCard(note: notes[index], index: index, onNoteDeleted: onNoteDeleted,);
          },
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      create_note(onNewNoteCreated: onNewNoteCreated)));
            }, ///////////////////////////////////////////////////////////////////Leran what this does
            backgroundColor: const Color.fromRGBO(255, 69, 51, 1),
            child: const Icon(
              Icons.add,
            )));
  }

  void onNewNoteCreated(Note note) {
    //Note note??
    notes.add(note);
    setState(() {});
  }

  void onNoteDeleted(int index) {
    notes.removeAt(index);
    setState(() {});
  }
}
