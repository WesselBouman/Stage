import 'package:work_app/Style.dart';
import 'package:work_app/screens/Profile/Profile.dart';
import 'package:work_app/screens/StartScreen/Screen_1.dart';
import 'package:work_app/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:work_app/screens/Screen_2/Screen_2.dart';
import 'package:work_app/screens/Screen_2/Events.dart';
import 'package:work_app/screens/Screen_2/Scherm2.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthService _auth = AuthService();
  int _currentIndex = 0;

  final List<Widget> _children = [

    HomePage(),
    CalendarPage(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          title: Text('Heusden Young Talent'),
          backgroundColor: mainColor,
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.person, color: Colors.white,),

              label: Text('Afmelden', style: TextStyle(
                color: Colors.white
              ),),
              onPressed: () async {
                await _auth.signOut();
              },
            ),
          ],
        ),
        body: _children[_currentIndex], // new
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: mainColor,
          onTap: onTabTapped, // new
          currentIndex: _currentIndex, // new
          items: [
            new BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            new BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              title: Text('Agenda'),
            ),
            new BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('Profiel')
            ),
          ],
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
