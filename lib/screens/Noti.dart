import 'package:dodam/widgets/Noti_Widget.dart';
import 'package:flutter/material.dart';
import '../data/Noti_test.dart';
import '../model/NotiItem.dart';

String Search = '';
NotiList? notiList;

class NotiScreen extends StatefulWidget {
  NotiScreen({Key? key}) : super(key: key);

  @override
  State<NotiScreen> createState() => _NotiScreenState();
}

class _NotiScreenState extends State<NotiScreen> {
  //final TextEditingController FoundController = TextEditingController();

  void cardEvent(BuildContext context, int index) {
    NotiItem content = notiList!.list!.elementAt(index);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Noti_Widgets(content: content),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    notiList = NotiList.fromJson(Noti_Test);
    return Scaffold(
      body: Column(
        children: [
          Text("Noti"),
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
              itemCount: notiList!.list!.length,
              itemBuilder: (BuildContext context, int index) {
                if (Search.isNotEmpty &&
                    !notiList!.list!
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
                      title: Text(notiList!.list!.elementAt(index).Title!),
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
