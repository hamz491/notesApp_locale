import 'package:flutter/material.dart';

class Custom_SearchIcon extends StatelessWidget {
  Custom_SearchIcon({super.key, this.myicon});
  IconData? myicon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      width: 46,
      height: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.07),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Center(
        child: Icon(
          myicon,
          size: 33,
        ),
      ),
    );
  }
}
