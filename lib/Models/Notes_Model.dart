import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'Notes_Model.g.dart';

@HiveType(typeId: 0)
class Notes_Model extends HiveObject {
  @HiveField(0)
  late String title;
  @HiveField(1)
  late String suptitle;
  @HiveField(2)
  late DateTime time;
  @HiveField(3)
  late MaterialColor color;

  Notes_Model({
    required this.title,
    required this.suptitle,
    required this.time,
    required this.color,
  });
}
