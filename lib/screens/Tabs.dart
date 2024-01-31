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

  void _activePage(int index){
    switch(index){
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        unselectedItemColor: Colors.black54,
        selectedItemColor: Colors.green,
        backgroundColor: Colors.blue,
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
            label: 'Diary',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
            label: 'Album',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
            label: 'Noti',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
            label: 'Info',
          ),
        ],
      ),
    );
  }
}
