import 'package:dodam/screens/Tabs.dart';
import 'package:dodam/widgets/Signin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  var autoLogin = false;

  final TextEditingController IdController = TextEditingController();
  final TextEditingController PwController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('ID'),
              SizedBox(
                width: 250,
                child: CupertinoTextField(
                  controller: IdController,
                  placeholder: 'Insert ID',
                ),
              ),
              Text('PW'),
              SizedBox(
                width: 250,
                child: CupertinoTextField(
                  controller: PwController,
                  placeholder: 'Insert PW',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CupertinoSwitch(
                    value: autoLogin,
                    onChanged: (bool? value) {
                      setState(() {
                        autoLogin = !autoLogin;
                      });
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Sign up'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Sign_in(),
                        ),
                      );
                    },
                    child: Text("Sign up"),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => TabScreen(),
                    ),
                  );
                },
                child: Text('Sign In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
