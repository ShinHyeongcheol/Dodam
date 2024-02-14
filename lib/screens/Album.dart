import 'package:dodam/model/AlbumItem.dart';
import 'package:dodam/model/InfoItem.dart';
import 'package:flutter/material.dart';

import '../widgets/Alibum_Widget.dart';
import '../data/Album_Test.dart';
import 'package:image_picker/image_picker.dart';

AlbumList? albumList;

class AlbumSreen extends StatefulWidget {
  const AlbumSreen({Key? key}) : super(key: key);

  @override
  State<AlbumSreen> createState() => _AlbumSreenState();
}

class _AlbumSreenState extends State<AlbumSreen> {
  bool sorted = true;

  call_Index(bool sort, int index, int length) {
    return sort ? index : (length - index - 1);
  }

  sorted_Icon(bool sort) {
    return sort ? Icon(Icons.list_outlined) : Icon(Icons.list_alt);
  }

  final picker = ImagePicker();
  XFile? image;


  @override
  Widget build(BuildContext context) {
    albumList = AlbumList.fromJson(Album_Test);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Album"),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (_) {
                              return AlertDialog(
                                title: Text("Add Photo"),
                                actions: [

                                ],
                              );
                            });
                      },
                    ),
                    IconButton(
                      icon: sorted_Icon(sorted),
                      onPressed: () {
                        setState(() {
                          sorted = !sorted;
                        });
                      },
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
                      albumItem: albumList!.list!.elementAt(
                        call_Index(
                          sorted,
                          index,
                          albumList!.list!.length,
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
