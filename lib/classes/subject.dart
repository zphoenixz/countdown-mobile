import 'dart:io';

class Subject {
  String professor;
  int groupId;
  int maxSeats;
  int takenSeats;
  List days;
  List hours;  
  Subject({this.groupId=1, this.maxSeats=60, this.takenSeats=0, this.days, this.hours,this.professor="Yamil Cardenas"});
}
