import 'dart:io';
import 'subject.dart';
import '../backend/firestoreFunctions.dart' as fireStore;

class SubjectGroup {
  String name;
  String short;
  String nick;

  String description;

  List prerequisites;
  List prerequisitesId; 
  List <Subject> groups;//paralelos

  String collegeId;
  int subjectId;
  int groupId;

  SubjectGroup(this.collegeId, this.subjectId, this.groupId);



  getSubjectInfo(){//Firebase
    this.name = 'Calculo I';
    this.short = 'MAT-132';
    this.nick = 'Calc';

    this.description = 'Funciones reales y sus gráficas. Álgebra de funciones. Funciones especiales. '+
                        'Límites y continuidad. La derivada. Derivabilidad y continuidad.'+
                        'Derivadas de orden superior. Regla de la cadena. Aplicaciones de la derivada. '+
                        'Interpretación geométrica de la derivada. Las fórmulas de Taylor y MacLaurin. '+
                        'Regla de L`Hopital. Crecimiento y concavidad. Extremos de una función. Problemas '+
                        'de máximos y mínimos. Integrales. Técnicas de integración. Aplicaciones de la integral. '+
                        'Integrales impropias.';
    this.prerequisites = ['MAT-030'];
    this.prerequisitesId = [101];
    // getSubjectGroup();
  }



  Future getGroupSubject() async{
    var val = fireStore.getSubject(this.collegeId, this.subjectId, this.groupId).then((response){

      if(response.length > 1){
        return response;
      }else{
        print("****************** EXISTE PROBLEMA AL OBTENER LOS DATOS DE FIRESTORE ******************");
      }
    });
    return val;
  }

  getAllGroupsSubject(){
    List subjectsFromFirebase = [];
    for(int i = 0; i<subjectsFromFirebase.length; i++){
      
      // fireStore.getSubejct(this.collegeId, this.subjectId)
      // Subject materia= Subject(subjectsFromFirebase.professor, subjectsFromFirebase.groupName, this.groupId, this.maxSeats, this.takenSeats, this.days, this.hours);
      // this.groups.add(materia);
    }
  }


}
