import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';
import 'package:work_app/Style.dart';
import 'package:work_app/services/add_event.dart';
import 'package:flutter/cupertino.dart';
import 'package:work_app/services/routes.dart';

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
           Card(
             clipBehavior: Clip.antiAlias,
             margin: const EdgeInsets.all(10.0),
               child: TableCalendar(
                 weekendDays: [6],
                 headerStyle: HeaderStyle(
                   headerMargin: const EdgeInsets.only(bottom: 8.0),
                   titleTextStyle: TextStyle(color: mainColor,),
                   formatButtonDecoration: BoxDecoration(
                     border: Border.all(color: mainColor),
                     borderRadius: BorderRadius.circular(1.0)
                   ),
                   formatButtonTextStyle: TextStyle(color: mainColor),
                   leftChevronIcon: Icon(Icons.chevron_left, color: mainColor),
                   rightChevronIcon: Icon(Icons.chevron_right, color: mainColor),
                 ),
                 calendarStyle: CalendarStyle(
                   ),
                 firstDay: DateTime.utc(2010, 10, 16),
                 lastDay: DateTime.utc(2030, 3, 14),
                 calendarFormat: _calendarFormat,
                 focusedDay: _focusedDay,
                 selectedDayPredicate: (day) {
                   // Use `selectedDayPredicate` to determine which day is currently selected.
                   // If this returns true, then `day` will be marked as selected.

                   // Using `isSameDay` is recommended to disregard
                   // the time-part of compared DateTime objects.
                   return isSameDay(_selectedDay, day);
                 },
                 onDaySelected: (selectedDay, focusedDay) {
                   if (!isSameDay(_selectedDay, selectedDay)) {
                     // Call `setState()` when updating the selected day
                     setState(() {
                       _selectedDay = selectedDay;
                       _focusedDay = focusedDay;
                     });
                   }
                 },
                 onFormatChanged: (format) {
                   if (_calendarFormat != format) {
                     // Call `setState()` when updating calendar format
                     setState(() {
                       _calendarFormat = format;
                     });
                   }
                 },
                 onPageChanged: (focusedDay) {
                   // No need to call `setState()` here
                   _focusedDay = focusedDay;
                 },
               ),
           ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: mainColor,
        child: Icon(Icons.add),
        onPressed: (){
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AddEventPage(selectedDate: _selectedDay,);
            },
          );
        },
        ),
    );
  }
}


