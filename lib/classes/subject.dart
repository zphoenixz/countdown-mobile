import 'dart:io';

class Subject {
  String professor;
  int groupId;
  int maxSeats;
  int takenSeats;
  List days;
  List hours;  
  Subject(this.professor, this.groupId, this.maxSeats, this.takenSeats, this.days, this.hours);
}
