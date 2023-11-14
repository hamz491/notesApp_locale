import 'package:flutter/material.dart';
import 'package:notes_local/Widgets/CustomButton.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      child: TextForm(),
    );
  }
}

class TextForm extends StatefulWidget {
  const TextForm({
    super.key,
  });

  @override
  State<TextForm> createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  GlobalKey<FormState> mykey = GlobalKey();
  late String title, content;
  AutovalidateMode validatemode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: mykey,
      autovalidateMode: validatemode,
      child: Column(
        children: [
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Field Is Required';
              } else {
                return null;
              }
            },
            onSaved: (value) {
              title = value!;
              print(title);
            },
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
          TextFormField(
            onSaved: (value) {
              content = value!;
              print(content);
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Field Is Required';
              } else {
                return null;
              }
            },
            maxLines: 7,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              hintText: 'Content',
              hintStyle: TextStyle(
                color: Colors.white.withOpacity(.4),
              ),
              border: UnderlineInputBorder(),
            ),
          ),
          CustomButton(
            onTap: () {
              if (mykey.currentState!.validate()) {
                mykey.currentState!.save();
                Navigator.pop(context);
              } else {
                setState(() {
                  validatemode = AutovalidateMode.always;
                });
              }
            },
          )
        ],
      ),
    );
  }
}
