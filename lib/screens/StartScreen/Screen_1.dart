import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:work_app/Style.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     child: Scaffold(
       backgroundColor: Colors.transparent,
       body: ListView.builder(
         itemCount: 7,
         itemBuilder: (context,index)=>CardItem(),
       ),
       floatingActionButton: FloatingActionButton(
         backgroundColor: mainColor,
         onPressed: (){showDialog(
             context: context,
             builder: (BuildContext context) {
               return AlertDialog(
                 insetPadding: EdgeInsets.all(10),
                 backgroundColor: Colors.white,
                 shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.all(Radius.circular(10.0),
                     ),
                 ),
                 scrollable: true,
                 title: Text('Artikel Toevoegen', style: TextStyle(
                   color: mainColor,
                 ),),
                 content: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Form(
                     child: Container(
                       width: MediaQuery.of(context).size.width,
                       child: Column(
                         children: <Widget>[
                           TextFormField(
                             decoration: InputDecoration(
                               labelText: 'Titel', labelStyle: TextStyle(
                               color: mainColor,
                             ),
                               icon: Icon(Icons.title, color: mainColor,),
                             ),
                           ),
                           SizedBox(
                             height: 20,
                           ),
                           Container(
                               child: new Scrollbar(
                                 child: new SingleChildScrollView(
                                   scrollDirection: Axis.vertical,
                                   reverse: true,
                                   child: new TextField(
                                     maxLines: 13,
                                     decoration: new InputDecoration(
                                      fillColor: Colors.grey[50], filled: true,
                                       border: new OutlineInputBorder(
                                         borderRadius: const BorderRadius.all(
                                           const Radius.circular(10.0),
                                         ),
                                       ),
                                       hintText: 'Tekst Toevoegen', hintStyle: TextStyle(
                                       color: mainColor,

                                     ),
                                   ),
                                   ),
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                 ),
                 actions: [
                   RaisedButton(
                     color: mainColor,
                       child: Text("Artikel Plaatsen", style:
                       TextStyle( color: Colors.white
                       ),
                       ),
                       onPressed: () {
                         // your code
                       })
                 ],
               );
             });

         },
         child: Icon(Icons.edit),
       ),
     ),
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(

        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 350.0,
            color: Colors.transparent,
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://png.pngitem.com/pimgs/s/78-786293_1240-x-1240-0-avatar-profile-icon-png.png",
                    ),
                    radius: 20.0,
                  ),
                  title: Text('Nieuws'),
                  subtitle: Text('Recente berichten'),
                ),
                Expanded(
                  child: Container(
                  color: Colors.blue,
                ),
                ),
                SizedBox(height: 14.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.thumb_up, color: Colors.grey[800],),
                        SizedBox(width: 8.0),
                        Text('Like',
                        style: TextStyle(
                          color: Colors.grey[800]
                        ),),
                      ],
                    ),
                Row(
                    children: <Widget>[
                    Icon(Icons.comment, color: Colors.grey[800],),
                     SizedBox(width: 8.0),
                     Text('Reageer',
                       style: TextStyle(
                     color: Colors.grey[800]
                     ),),
                ],
                ),
               Row(
                    children: <Widget>[
                    Icon(Icons.share, color: Colors.grey[800],),
                    SizedBox(width: 8.0),
                     Text('Delen',
                       style: TextStyle(
                           color: Colors.grey[800]
                       ),),
                 ],
                ),
              ],
            ),
                SizedBox(width: 12.0),
           ],
          ),
       ),
        ),
      );

  }
}