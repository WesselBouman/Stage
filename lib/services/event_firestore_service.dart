import 'package:work_app/services/database.dart';
import 'AppEvent.dart';
import 'database.dart';


final eventDBS = DatabaseService(
  AppDBConstants.eventsCollection,
  fromDS: (id, data) => AppEvent.fromDS(id, data),
  toMap: (event) => event.toMap(),
);