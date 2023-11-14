import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 13),
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.deepPurple[300],
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            'Add',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
