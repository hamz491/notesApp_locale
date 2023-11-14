import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_local/Cubits/AddNotes_Cubit/AddNotesState.dart';
import 'package:notes_local/Models/Notes_Model.dart';
import 'package:notes_local/Widgets/Constants.dart';

class Notes_Cubit extends Cubit<AddNote_States> {
  Notes_Cubit() : super(NotesInitState());

  AddNote(Notes_Model note) async {
    emit(LoadingState());
    try {
      var notebox = Hive.box<Notes_Model>(kBox_Name);
      emit(SuccessState());
      await notebox.add(note);
    } catch (ex) {
      FailerState();
    }
  }
}
