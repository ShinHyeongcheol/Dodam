import 'package:dodam/widgets/Info_Widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "  Info",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: const InputDecoration(
                suffixIconColor: Color(0xffffb2a5),
                suffixIcon: Icon(Icons.search),
                hintText: 'Search',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  Search = value;
                });
              },
            ),
          ),
          Container(
            height: 10,
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
                      borderRadius: BorderRadius.all(
                        Radius.elliptical(10, 10),
                      ),
                    ),
                    child: ListTile(
                      title: Text(
                        infoList!.list!.elementAt(index).Title!,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text(
                          "Update : ${DateFormat('yyyy.MM.dd').format(infoList!.list!.elementAt(index).Update!)}",
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                      leading: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Image.asset(
                            infoList!.list!.elementAt(index).Image!,
                            height: 50,
                          ),
                        ),
                      ),
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
