import 'package:dodam/widgets/Setting_item.dart';
import 'package:flutter/material.dart';
import '../data/Set_Test.dart';

class SetScreen extends StatefulWidget {
  const SetScreen({Key? key}) : super(key: key);

  @override
  State<SetScreen> createState() => _SetScreenState();
}

class _SetScreenState extends State<SetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("Setting"),
            Container(
              child: Expanded(
                child: ListView.builder(
                  itemCount: Setting.length,
                  itemBuilder: (context, index) {
                    return Set_Item(
                        title: Setting[index][0], type: Setting[index][1]);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
