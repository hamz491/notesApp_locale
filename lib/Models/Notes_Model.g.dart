// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Notes_Model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NotesModelAdapter extends TypeAdapter<Notes_Model> {
  @override
  final int typeId = 0;

  @override
  Notes_Model read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Notes_Model(
      title: fields[0] as String,
      suptitle: fields[1] as String,
      time: fields[2] as DateTime,
      color: fields[3] as MaterialColor,
    );
  }

  @override
  void write(BinaryWriter writer, Notes_Model obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.suptitle)
      ..writeByte(2)
      ..write(obj.time)
      ..writeByte(3)
      ..write(obj.color);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NotesModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
