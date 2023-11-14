import 'package:flutter/material.dart';
import 'package:notes_local/Widgets/AddNote.dart';
import 'package:notes_local/Widgets/Custom_Card.dart';
import 'package:notes_local/Widgets/Custom_SearchIcon.dart';
import 'package:notes_local/Widgets/Notes_ListView.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return AddNote();
            },
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        backgroundColor: Colors.cyan,
        shape: CircleBorder(),
      ),
      appBar: AppBar(
        title: const Text('Notes'),
        titleTextStyle: TextStyle(fontSize: 26),
        actions: [
          Custom_SearchIcon(myicon: Icons.search),
        ],
      ),
      body: Notes_ListView(),
    );
  }
}
