import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  Icon Myfeeling = Icons.circle

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () => showDialog(context: context, builder: (context){

                }),
                icon: const Icon(Icons.camera),
              ),
              Text('태명'),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.camera),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
