import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../model/TodoList.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var Dday = 166;
  var BabyName = 'DoDam';
  var BabyName_Text = '';

  getToday() {
    DateTime today = DateTime.now();
    var strToday = DateFormat('yyyy.MM.dd').format(today);
    return strToday;
  }

  String Todo = "";
  String TodoUpdate = "";
  List<TodoList> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.calendar_month_outlined),
                ),
                Text(
                  getToday(),
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_none),
                ),
              ],
            ),
            Container(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('우리가 함께 한 날 '),
                        Text(
                          '${((266 - Dday) / 7).floor()} 주 ',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffFFD1C9),
                          ),
                        ),
                      ],
                    ),
                    Text('우리가 만나기까지 '),
                  ],
                ),
                Text(
                  '${Dday}',
                  style: TextStyle(
                    fontSize: 50,
                    color: Color(0xffffb2a5),
                  ),
                ),
              ],
            ),
            Container(
              height: 50,
            ),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffffb2a5),
              ),
              child: Image.asset('assets/images/Home_Baby.png'),
            ),
            TextButton(
              child: Text(
                '${BabyName}',
                style: TextStyle(
                  color: Color(0xff3E5E75),
                  fontSize: 30,
                ),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Baby Name'),
                      actions: [
                        TextField(
                          onChanged: (value) {
                            setState(() {
                              BabyName_Text = value;
                            });
                          },
                          decoration: InputDecoration(
                              hintText: "${BabyName}"),
                        ),
                        Row(
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  BabyName = BabyName_Text;
                                });
                                Navigator.of(context).pop();
                              },
                              child: Text("저장"),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  BabyName_Text = BabyName;
                                });
                                Navigator.of(context).pop();
                              },
                              child: Text("취소"),
                            ),
                          ],
                        )
                      ],
                    );
                  },
                );
              },
            ),
            Container(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'With Baby',
                          style: TextStyle(fontSize: 15),
                        ),
                        IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text('With'),
                                  actions: [
                                    TextField(
                                      onChanged: (value) {
                                        setState(() {
                                          Todo = value;
                                          TodoUpdate = getToday();
                                        });
                                      },
                                      decoration: InputDecoration(
                                          hintText: "With Baby"),
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              todos.add(
                                                TodoList(
                                                  Todo: Todo,
                                                  TodoDay: TodoUpdate,
                                                ),
                                              );
                                            });
                                            Navigator.of(context).pop();
                                          },
                                          child: Text("저장"),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              Todo = '';
                                              TodoUpdate = '';
                                            });
                                            Navigator.of(context).pop();
                                          },
                                          child: Text("취소"),
                                        ),
                                      ],
                                    )
                                  ],
                                );
                              },
                            );
                          },
                          icon: Icon(
                            Icons.add,
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 120,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Color(0xffffb2a5), width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListView.builder(
                          itemCount: todos.length,
                          itemBuilder: (BuildContext context, index) {
                            return InkWell(
                              child: ListTile(
                                title: Text(todos[index].Todo),
                              ),
                            );
                          }),
                    ),
                  ],
                ),/*
                Container(
                  width: 15,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.event_note,
                    size: 30,
                    color: Color(0xffffb2a5),
                  ),
                ),*/
              ],
            ),
          ],
        ),
      ),
    );
  }
}
