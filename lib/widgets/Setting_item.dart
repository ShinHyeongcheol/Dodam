import 'package:flutter/material.dart';

class Set_Item extends StatefulWidget {
  Set_Item({
    required this.title,
    required this.type,
    super.key,
  });
  final String title;
  final int type;

  @override
  State<Set_Item> createState() => _Set_ItemState();
}

class _Set_ItemState extends State<Set_Item> {
  Color type_color(int type) {
    if (type == 1) {
      return Colors.grey;
    }
    return Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: type_color(widget.type),
      child: Text(widget.title),
    );
  }
}
