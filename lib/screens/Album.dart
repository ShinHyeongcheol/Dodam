import 'package:dodam/model/AlbumItem.dart';
import 'package:flutter/material.dart';

import '../widgets/Alibum_Widget.dart';

final Album_Test = {
  "list": [
    {"Image": "assets/images/Album1.png", "Dday": 30, "Update": "2022.03.11"},
    {"Image": "assets/images/Album2.png", "Dday": 100, "Update": "2021.03.11"},
  ]
};
AlbumList? albumList;

class AlbumSreen extends StatefulWidget {
  const AlbumSreen({Key? key}) : super(key: key);

  @override
  State<AlbumSreen> createState() => _AlbumSreenState();
}

class _AlbumSreenState extends State<AlbumSreen> {
  @override
  Widget build(BuildContext context) {
    albumList = AlbumList.fromJson(Album_Test);

    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Text("Album"),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.list_outlined,
                ),
              ),
            ],
          ),
          GridView.builder(
              itemCount: albumList!.list!.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Album_Widget(
                  albumItem: albumList!.list!.elementAt(index),
                );
              })
        ],
      ),
    );
  }
}
