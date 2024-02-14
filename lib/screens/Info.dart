import 'package:dodam/widgets/Info_Widget.dart';
import 'package:flutter/material.dart';
import '../data/Info_Test.dart';
import '../model/InfoItem.dart';

String Search = '';
InfoList? infoList;

class InfoScreen extends StatefulWidget {
  InfoScreen({Key? key}) : super(key: key);

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  //final TextEditingController FoundController = TextEditingController();

  void cardEvent(BuildContext context, int index) {
    InfoItem content = infoList!.list!.elementAt(index);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Info_Widgets(content: content),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    infoList = InfoList.fromJson(Info_Test);
    return Scaffold(
      body: Column(
        children: [
          Text("Info"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(hintText: 'Search'),
              onChanged: (value) {
                setState(() {
                  Search = value;
                });
              },
            ),
          ),
          Container(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: infoList!.list!.length,
              itemBuilder: (BuildContext context, int index) {
                if (Search.isNotEmpty &&
                    !infoList!.list!
                        .elementAt(index)
                        .Title!
                        .toLowerCase()
                        .contains(Search.toLowerCase())) {
                  return SizedBox.shrink();
                } else {
                  return Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(20, 20))),
                    child: ListTile(
                      title: Text(infoList!.list!.elementAt(index).Title!),
                      onTap: () {
                        cardEvent(context, index);
                      },
                    ),
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
