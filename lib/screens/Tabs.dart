import 'package:dodam/screens/Album.dart';
import 'package:dodam/screens/Diary.dart';
import 'package:dodam/screens/Home.dart';
import 'package:dodam/screens/Info.dart';
import 'package:dodam/screens/Noti.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);


  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _selectedPageIndex = 0;
  Widget activePage = const HomeScreen();

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
      _activePage(index);
    });
  }

  void _activePage(int index) {
    switch (index) {
      case 0:
        activePage = const HomeScreen();
        break;
      case 1:
        activePage = const DiaryScreen();
        break;
      case 2:
        activePage = const AlbumSreen();
        break;
      case 3:
        activePage = const NotiScreen();
        break;
      case 4:
        activePage = const InfoScreen();
        break;
      default:
    }
  }

  Color activeColor = Color(0xffffb2a5);
  Color nonActiveColor = Color(0xff989696);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        unselectedItemColor: Color(0xff989696),
        selectedItemColor: Color(0xffffb2a5),
        //backgroundColor: Colors.blue,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/tab1.png',
              width: 25,
            ),
            label: 'Home',
            activeIcon: Image.asset(
              'assets/images/tab1.png',
              color: activeColor,
              width: 30,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/tab2.png",
              width: 25,
            ),
            label: 'Note',
            activeIcon: Image.asset(
              "assets/images/tab2.png",
              color: activeColor,
              width: 30,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/tab3.png",
              width: 25,
            ),
            label: 'Album',
            activeIcon: Image.asset(
              "assets/images/tab3.png",
              color: activeColor,
              width: 30,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/tab4.png",
              width: 25,
            ),
            label: 'Info',
            activeIcon: Image.asset(
              "assets/images/tab4.png",
              color: activeColor,
              width: 30,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/tab5.png",
              width: 25,
            ),
            label: 'Set',
            activeIcon: Image.asset(
              "assets/images/tab5.png",
              color: activeColor,
              width: 30,
            ),
          ),
        ],
      ),
    );
  }
}
