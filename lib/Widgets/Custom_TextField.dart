import 'package:flutter/material.dart';

class Custom_TextField extends StatelessWidget {
  const Custom_TextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
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
    );
  }
}
