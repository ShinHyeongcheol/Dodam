import 'package:flutter/material.dart';

import '../model/AlbumItem.dart';

class Album_Widget extends StatefulWidget {
  const Album_Widget({required this.albumItem,super.key});
  final AlbumItem albumItem;

  @override
  State<Album_Widget> createState() => _Album_WidgetState();
}

class _Album_WidgetState extends State<Album_Widget> {
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}
