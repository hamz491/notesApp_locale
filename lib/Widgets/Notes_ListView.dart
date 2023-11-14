import 'package:flutter/material.dart';
import 'package:notes_local/Widgets/Custom_Card.dart';

class Notes_ListView extends StatelessWidget {
  const Notes_ListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Custom_Card();
      },
    );
  }
}
