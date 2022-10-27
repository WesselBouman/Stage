import 'package:cloud_firestore/cloud_firestore.dart';


class DatabaseService {

  final String uid;
  DatabaseService(String eventsCollection, { this.uid });

  // collection reference
  final CollectionReference workCollection = FirebaseFirestore.instance.collection('brews');

  Future<void> updateUserData(String sugars, String name, int strength) async {
    return await workCollection.doc(uid).set({
      'sugars': sugars,
      'name': name,
      'strength': strength,
    });
  }

}

class AppDBConstants {
  static const String eventsCollection = 'events';
  static const String userCollection = 'users';
  static const String appSettingsCollection = 'app_settings';
  static const String userStorageBucket = 'users';
  static const String deviceSubCollection = 'devices';
}