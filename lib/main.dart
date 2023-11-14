import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_local/Cubits/AddNotes_Cubit/AddNotes_Cubit.dart';
import 'package:notes_local/Models/Notes_Model.dart';
import 'package:notes_local/Views/HomeView.dart';
import 'package:notes_local/Widgets/AddNote.dart';
import 'package:notes_local/Widgets/Constants.dart';
import 'package:notes_local/Widgets/Edit_Note.dart';

void main() async {
  await Hive.initFlutter(); // initialization to HiveFlutter
  await Hive.openBox(
      kBox_Name); // Open new box and give him a name to access laters
  Hive.registerAdapter(NotesModelAdapter());
  runApp(const Notes());
}

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => Notes_Cubit(),
        )
      ],
      child: MaterialApp(
        routes: {
          'editnote': (context) => Edit_Note(),
        },
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: "Poppins",
        ),
        home: const HomeView(),
      ),
    );
  }
}
