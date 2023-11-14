import 'package:flutter/material.dart';

class Custom_Card extends StatelessWidget {
  const Custom_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('editnote');
      },
      child: Container(
        padding: EdgeInsets.only(
          top: 24,
          bottom: 24,
          left: 14,
        ),
        margin: EdgeInsets.only(
          right: 10,
          left: 10,
          top: 4,
          bottom: 10,
        ),
        decoration: BoxDecoration(
          color: Color(0xffFFCD7B),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Text(
                  'Flutter Tips',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              subtitle: Text(
                'Build Your Career With Tharwat Samy',
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.black.withOpacity(.5),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 35,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 17,
                top: 19,
              ),
              child: Text(
                'May 21,2022',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black.withOpacity(.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
