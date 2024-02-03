import 'package:dodam/screens/Album.dart';
import 'package:flutter/material.dart';

import '../model/AlbumItem.dart';

class Album_Widget extends StatelessWidget {
  const Album_Widget({required this.albumItem, super.key});
  final AlbumItem albumItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xffffb2a5),
            width: 5,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("D-${albumItem.Dday!}"),
                Text("${albumItem.Update!}"),
              ],
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(5),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      '${albumItem.Image!}',
                    ),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
