import 'dart:io';

import 'package:tp_flutter/Matiere.dart';
import 'package:tp_flutter/Note.dart';

void main() {
  var index = 0;

  print("Note Français");
  var noteFr = stdin.readLineSync();

  print("Note Math");
  var noteMath = stdin.readLineSync();

  print("Note Informatique");
  var noteInfo = stdin.readLineSync();



if(noteFr != null && noteMath != null && noteInfo != null) {

  var noteFrStock = Note(id: index+1, note: double.parse(noteFr));
  var noteMathStock = Note(id: index+1, note: double.parse(noteMath));
  var noteInfoStock = Note(id: index+1, note: double.parse(noteInfo));

  List<Note> notesFr = [];
  notesFr.add(noteFrStock);

  List<Note> notesMath = [];
  notesMath.add(noteMathStock);

  List<Note> notesInfo = [];
  notesInfo.add(noteInfoStock);

  List<Matiere> listMatiere = [ Matiere(id:1, name: "Francais", notes:notesFr, notess : [double.parse(noteFr)]),
                                Matiere(id:2, name: "Math", notes: notesMath, notess : [double.parse(noteMath)]),
                                Matiere(id:3, name: "Informatique", notes:notesInfo, notess : [double.parse(noteInfo)])];


  print("La moyenne générale est : " +
      calculMoyenne( double.parse(noteFr), double.parse(noteMath), double.parse(noteInfo),listMatiere));

  print("La moyenne  générale  depuis la liste est : " +
      calculMoyenneFromList(listMatiere));
}


}

String calculMoyenne (double noteFr, double noteMath, double noteInfo, List<Matiere> listMatiere) {
 return ((noteFr + noteMath + noteInfo)/listMatiere.length).toStringAsFixed(2);
}

String calculMoyenneFromList ( List<Matiere> listMatiere) {
  return ((
      listMatiere[0].notes![0].note + listMatiere[1].notes![0].note +
          listMatiere[2].notes![0].note)/listMatiere.length).toStringAsFixed(2);
}
/*
double calculMoyenneFromListUseMoyenne ( List<Matiere> listMatiere) {
  List<double> listMoyenneMatiere = [];

      listMatiere.forEach(((matiere) {
    listMoyenneMatiere.add(matiere.moyenne());
    print("moyenne matiere  ${matiere.moyenne()}");
      });
    return ;
}
*/


