import 'package:flutter/material.dart';
import 'package:notes_local/Widgets/Custom_SearchIcon.dart';

class Edit_Note extends StatelessWidget {
  const Edit_Note({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Note'),
        titleTextStyle: TextStyle(fontSize: 26),
        actions: [
          Custom_SearchIcon(myicon: Icons.done),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 10,
        ),
        child: Column(
          children: [
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 27,
                ),
                hintText: 'Title',
                hintStyle: TextStyle(
                  color: Colors.white.withOpacity(.4),
                ),
                border: UnderlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              maxLines: 8,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 10,
                ),
                hintText: 'Content',
                hintStyle: TextStyle(
                  color: Colors.white.withOpacity(.4),
                ),
                border: InputBorder.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
