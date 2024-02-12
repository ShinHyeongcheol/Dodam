import 'package:dodam/model/NotiItem.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Noti_Widgets extends StatelessWidget {
  const Noti_Widgets({required this.content, super.key});
  final NotiItem content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(content!.Title!),
      ),
      body: Column(
        children: [
          Text(content!.Title!),
          Text(
            DateFormat("yyyy.MM.dd").format(content!.Update!),
          ),
          Text(content!.Write!),
        ],
      ),
    );
  }
}
