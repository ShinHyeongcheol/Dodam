import 'package:dodam/model/InfoItem.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Info_Widgets extends StatelessWidget {
  const Info_Widgets({required this.content, super.key});
  final InfoItem content;

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
