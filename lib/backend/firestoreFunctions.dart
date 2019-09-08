import 'package:cloud_firestore/cloud_firestore.dart';



Future getSubject(String collegeId, int subjectId, int groupId) async {

  var subject = Firestore.instance.collection(collegeId).document(subjectId.toString()).collection("groups").document(groupId.toString());
  var val = await subject.get().then((dataSubject) {
    if (dataSubject.exists){
      List days = dataSubject.data['days'];
      List hours = dataSubject.data['hours'];
      List classroom = dataSubject.data['classroom'];
      int maxSeats = dataSubject.data['maxSeats'];
      int takenSeats = dataSubject.data['takenSeats'];
      String professor = dataSubject.data['professor'];
      // print(days);
      // print(hours);
      // print(classroom);
      // print(maxSeats);
      // print(takenSeats);
      // print(professor);
      return [days, hours, classroom, maxSeats, takenSeats, professor];
    }else
      return[0];
  });
  return val;
  
}

Future<dynamic> checkNumber(String phoneNumber) async {
  var user = Firestore.instance.collection('personas').document(phoneNumber);
  var val = await user.get().then((dataUser) {
    if (!dataUser.exists)
      return false;
    else
      return true;
  });

  return val;
}

Future<dynamic> createUser(Map<String, dynamic> newUserData, String token) async {
  print(newUserData);
  print(newUserData['phone']);
  var user =
      Firestore.instance.collection('personas').document(newUserData['phone']);
  user.setData({
    "nombre": newUserData['name'],
    "direccion": newUserData['direction'],
    "panico": false,
    "token": token
  });
}

Future<dynamic> panicAttack(String phone) async {
  print(phone);
  var user = Firestore.instance.collection('personas').document(phone);
  user.get().then((data) {
    if (data.data['panico'])
      user.updateData({
        "panico": false,
      });
    else
      user.updateData({
        "panico": true,
      });
  });
}
