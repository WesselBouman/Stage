import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work_app/Style.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 14,
            child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [Colors.deepPurpleAccent, mainColor,]
                    )
                ),
                child: Container(
                  width: double.infinity,
                  height: 300.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://png.pngitem.com/pimgs/s/78-786293_1240-x-1240-0-avatar-profile-icon-png.png",
                        ),
                        radius: 50.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Kresco medewerker",
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "IT Support Engineer",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                          fontStyle: FontStyle.italic
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                    ],
                  ),
                )
            ),
          ),
          SizedBox(
            height: 15.0,
          ),

          Flexible(
            flex: 4,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.work_outline, color: mainColor,
                    ),
                    SizedBox(
                      height: 5.0,
                      width: 10,
                    ),
                    Text('Development',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Flexible(
            flex: 4,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.mail_outline, color: mainColor,
                    ),
                    SizedBox(
                      height: 5.0,
                      width: 10,
                    ),
                    Text('Voorbeeld@kresco.nl',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 4,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.phone, color: mainColor,
                    ),
                    SizedBox(
                      height: 5.0,
                      width: 10,
                    ),
                    Text('+31641528574',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 4,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.cake_outlined, color: mainColor,
                    ),
                    SizedBox(
                      height: 5,
                      width: 10,
                    ),
                    Text('23/02/1997',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 90.0,
          ),

          Flexible(
            flex: 3,
            child: Container(
              alignment: Alignment.bottomCenter,
              width: 250.00,
              child: RaisedButton(
                  onPressed: (){},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)
                  ),
                  elevation: 0.0,
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.deepPurpleAccent,mainColor,]
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Container(
                      constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                      alignment: Alignment.center,
                      child: Text("Profiel delen",
                        style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight:FontWeight.w300),
                      ),
                    ),
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}