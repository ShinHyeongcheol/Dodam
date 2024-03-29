import 'package:dodam/model/NoteItem.dart';
import 'package:flutter/material.dart';

class NoteScreen extends StatefulWidget {
  NoteScreen({Key? key}) : super(key: key);

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  NoteItem note = NoteItem(Name: 'None', Preg_Day: 'None');

  late String User_Name = note.Name;
  late String User_PregDay = note.Preg_Day;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: IconButton(
              icon: Icon(Icons.edit_note),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Edit Data"),
                      content: Column(
                        children: [
                          TextField(
                            onChanged: (value) {
                              setState(() {
                                User_Name = value;
                              });
                            },
                          ),
                          TextField(
                            onChanged: (value) {
                              setState(() {
                                User_PregDay = value;
                              });
                            },
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    note.Name = User_Name;
                                    note.Preg_Day = User_PregDay;

                                  });
                                  Navigator.of(context).pop();
                                },
                                child: Text('Save'),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    User_Name = note.Name;
                                    User_PregDay = note.Preg_Day;

                                  });
                                  Navigator.of(context).pop();
                                },
                                child: Text('Close'),
                              ),
                            ],
                          )
                        ],
                      ),
                      actions: [],
                    );
                  },
                );
              },
            ),
          ),
          Text(note!.Name),
        ],
      ),
    );
  }
}
