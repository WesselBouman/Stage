import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:work_app/Style.dart';
import 'routes.dart';
import 'package:intl/intl.dart';

class AddEventPage extends StatefulWidget {
final DateTime selectedDate;

  const AddEventPage({Key key, this.selectedDate}) : super(key: key);
  @override
  _AddEventPageState createState() => _AddEventPageState();
}

class _AddEventPageState extends State<AddEventPage> {
  final _formKey  = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Taak Toevoegen'),
        backgroundColor: mainColor,
        leading: IconButton(
          icon: Icon(Icons.clear, color: Colors.white,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        actions: [
          Center(
            child: ElevatedButton(
              onPressed: () async {
                },
                child: Text('Opslaan'),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          FormBuilder(child: Column(
            children: [
              FormBuilderTextField(
                name: 'Title',
                decoration: InputDecoration(
                  hintText: 'Titel Toevoegen',
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.only(left: 48.0),
                ),
              ),
              Divider(),
              FormBuilderTextField(
                name: 'Bschrijving',
              maxLines: 5, minLines: 1, decoration:
                InputDecoration(
                border: InputBorder.none,
                  hintText: 'Details Toevoegen',
                    prefixIcon: Icon(Icons.short_text),
                ),
              ),
              FormBuilderSwitch(name: 'Openbaar', title: Text('Openbaar'),
                initialValue: false, controlAffinity: ListTileControlAffinity.leading, decoration: InputDecoration(
                  border: InputBorder.none
                ),
              ),
              Divider(),
              FormBuilderDateTimePicker(
                name: 'Datum',
                initialValue: widget.selectedDate ??
                DateTime.now(),
                fieldHintText: 'Datum Toevoegen',
                inputType: InputType.date,
                format: DateFormat('EEEE, dd/mm/yyyy'),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.calendar_today_sharp),
                ),
              ),
            ],
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: ButtonStyle(
                ),
                onPressed: () async {},
                child: Text(
                    'Opslaan'
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
