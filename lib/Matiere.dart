import 'package:tp_flutter/Note.dart';

class Matiere {
  final id;
  String name;
  List<double> notess;
  List<Note> notes;


  Matiere({
    required this.id,
    required this.name,
    required this.notes,
    required this.notess,
  });

  double moyenne() =>
      notess.reduce((a,b)=> a+b) /
       notess.length;
}