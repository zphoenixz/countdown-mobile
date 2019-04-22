import 'dart:io';
import 'subject.dart';
import 'subjectGroup.dart';

class UserWeek {
  int days;
  int hours;
  int type;
  int collegeId;
  // 0 : Ucb
  // 1 : Umsa
  // and so on
  List subjectsId;
  List groupId;

  UserWeek(this.collegeId, this.subjectsId);

  List materias;
  List paralelos;


  List dias = ['Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sa','Do'];
  // List<List<String>> weekState;

 

  List<List<int>> weekState = [
    [ 0, 0, 0, 0, 0, 0],//0
    [ 0, 2, 0, 3, 0, 0],//1
    [ 0, 2, 0, 3, 0, 0],//2
    [ 0, 0, 0, 0, 0, 0],//3
    [ 0, 4, 0, 0, 0, 0],//4
    [ 0, 4, 0, 4, 0, 0],//5
    [ 0, 0, 0, 4, 0, 0],//6
    [ 0, 0, 0, 0, 0, 0],//7
    [ 0, 0, 0, 0, 0, 0],//8
    [ 0, 1, 0, 0, 5, 0],//9
    [ 0, 1, 0, 0, 5, 0],//10
    [ 0, 0, 0, 0, 0, 0],//11
    [ 0, 0, 0, 0, 0, 0],//12
    [ 0, 0, 0, 6, 0, 0],//13
    [ 0, 0, 0, 6, 0, 0],//14
    [ 0, 0, 0, 0, 0, 0],//15
    [ 0, 0, 0, 0, 0, 0],//16
  ];

  getUserWeek(){
    
    // ['L', 'M', 'M', 'J', 'V', 'S'],
  }

  getSubjects(){
    //TO-DO firestores, check, subjects with labs
    List pruebaMaterias = ['Calculo I', 'Algebra I', 'Progra I (T)', /* 'Progra I (L)', */ 'Escritura Academica', 'Antropologia Cristiana'];
    List pruebaParalelos = ['1', '1', '2', '2', '1', '13'];



    for(int i=0; i < this.subjectsId.length; i++){
      //this.collegeId[i]-> de que universidad lo saco
      //this.groupId[i]=> de que paralelo
      //from firestore
      //get subjects one after the other

      SubjectGroup materia = SubjectGroup(this.collegeId, this.groupId[i]);
  
      // this.materias = pruebaMaterias[i];
      // this.paralelos =pruebaParalelos[i];
    }

  }


  buildWeek(){
    switch (this.type) {
      case 1://UCB
        break;
      case 1://UMSA
        break;
      case 1://UPB
        break;
      default:
        return ;
    }
  }

  getCleanUserWeek(){
    
  }

  void weekCreator(){

  }

}
