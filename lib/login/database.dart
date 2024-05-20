import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods{

  Future addpersonRecord(Map<String,dynamic>personMap,String id)async{
    return await FirebaseFirestore.instance.collection("person").doc(id).set(personMap);
  }
}