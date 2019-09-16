import 'dart:io';
import 'subject.dart';
import 'subjectGroup.dart';

class UserWeek {
  int days;
  int hours;
  String collegeId;
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

  getSubjects() async {
    //TO-DO firestores, check, subjects with labs
    // List pruebaMaterias = ['Calculo I', 'Algebra I', 'Progra I (T)', /* 'Progra I (L)', */ 'Escritura Academica', 'Antropologia Cristiana'];
    // List pruebaParalelos = ['1', '1', '2', '2', '1', '13'];
    for(int i=0; i < this.subjectsId.length; i+=2){
       // this.collegeId = 'UCB'
       // this.subjectsId = [111, 3] //subjectId,,groupId,, subjectId,,groupId, subjectId,,groupId, 

      SubjectGroup materia = SubjectGroup(this.collegeId, this.subjectsId[i], this.subjectsId[i+1]);
      var val = await materia.getGroupSubject().then((data){
        return data;
      });
      print(val[0]);
      print(val[1]);
      print(val[2]);
      print(val[3]);
      print(val[4]);
      print(val[5]);
    }
  }


  buildWeek(){

  }

  getCleanUserWeek(){
    
  }

  void weekCreator(){

  }

}
