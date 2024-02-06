import 'package:dodam/model/AlbumItem.dart';
import 'package:flutter/material.dart';

import '../widgets/Alibum_Widget.dart';

final Album_Test = {
  "list": [
    {
      "Image": "assets/images/Album1.png",
      "Dday": 30,
      "Update": "2022.03.11",
      "Writer": "Me"
    },
    {
      "Image": "assets/images/Album2.png",
      "Dday": 100,
      "Update": "2021.03.11",
      "Writer": "Me"
    },
    {
      "Image": "assets/images/Album1.png",
      "Dday": 30,
      "Update": "2022.03.11",
      "Writer": "Me"
    },
    {
      "Image": "assets/images/Album2.png",
      "Dday": 100,
      "Update": "2021.03.11",
      "Writer": "Me"
    },
    {
      "Image": "assets/images/Album1.png",
      "Dday": 30,
      "Update": "2022.03.11",
      "Writer": "Me"
    },
    {
      "Image": "assets/images/Album2.png",
      "Dday": 100,
      "Update": "2021.03.11",
      "Writer": "Me"
    },
    {
      "Image": "assets/images/Album1.png",
      "Dday": 30,
      "Update": "2022.03.11",
      "Writer": "Me"
    },
    {
      "Image": "assets/images/Album2.png",
      "Dday": 100,
      "Update": "2021.03.11",
      "Writer": "Me"
    },
  ]
};
AlbumList? albumList;

class AlbumSreen extends StatefulWidget {
  const AlbumSreen({Key? key}) : super(key: key);

  @override
  State<AlbumSreen> createState() => _AlbumSreenState();
}

class _AlbumSreenState extends State<AlbumSreen> {

  bool sorted = true;

  call_Index(bool sort, int index, int length){
    return sort?index : (length - index - 1);
  }

  sorted_Icon(bool sort){
    return sort?Icon(Icons.list_outlined) : Icon(Icons.list_alt);
  }

  @override
  Widget build(BuildContext context) {
    albumList = AlbumList.fromJson(Album_Test);

    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Album"),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        sorted = !sorted;
                      });
                    },
                    icon: sorted_Icon(sorted),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
                itemCount: albumList!.list!.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Album_Widget(
                    albumItem: albumList!.list!.elementAt(call_Index(sorted, index, albumList!.list!.length,),),
                  );
                }),
          )
        ],
      ),
    );
  }
}
