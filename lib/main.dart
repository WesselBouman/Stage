import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/user.dart';
import 'services/auth.dart';
import 'screens/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:async';
import 'package:intl/date_symbol_data_local.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  initializeDateFormatting().then((_) =>
      runApp(MyApp()));
}

class MyApp extends StatelessWidget {

  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserNew>.value(
      initialData: null,
      value: AuthService().user,
      child: MaterialApp(
        home: FutureBuilder(
            future: _fbApp,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
    print ('Error ${snapshot.error.toString()}');
    return Text('Er ging iets fout');
    } else if (snapshot.hasData) {
    return Wrapper();
    }   else {
                return Center(
                child: CircularProgressIndicator(),
                  );
              }
              },
      ),
      ),
    );
  }

}



