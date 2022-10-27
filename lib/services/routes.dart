import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'add_event.dart';
import 'package:work_app/services/add_event.dart';
import 'package:work_app/screens/StartScreen/Screen_1.dart';
import 'package:flutter/cupertino.dart';
import 'package:work_app/screens/screen_2/scherm2.dart';



class AppRoutes {
  static const String addEvent = "add_event";

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
        settings: settings,
        builder: (context) {
          switch (settings.name) {

            case addEvent:
              return AddEventPage(selectedDate: settings.arguments,);
                       default:
              return HomePage();
          }
        }
    );

  }
}

