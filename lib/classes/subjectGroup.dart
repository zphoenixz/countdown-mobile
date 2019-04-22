import 'dart:io';
import 'subject.dart';

class SubjectGroup {
  String name;
  String short;
  String nick;

  String description;

  List prerequisites;
  List prerequisitesId; 
  List <Subject> groups;//paralelos

  int collegeId;
  // 0 : Ucb
  // 1 : Umsa
  // and so on
  int subjectId;

  SubjectGroup(this.collegeId, this.subjectId);



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
    getSubjectGroup();
  }

  getSubjectGroup(){
    List subjectsFromFirebase = [];
    for(int i = 0; i<subjectsFromFirebase.length; i++){
      
      // Subject materia= Subject(subjectsFromFirebase.professor, subjectsFromFirebase.groupName, this.groupId, this.maxSeats, this.takenSeats, this.days, this.hours);
      // this.groups.add(materia);

    }
  }


}
