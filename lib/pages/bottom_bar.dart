import 'package:flutter/material.dart';
import 'package:project5/pages/first.dart'; // Предположим, что первая страница называется FirstPage
import 'package:project5/pages/second.dart';
import 'package:project5/pages/third.dart';
import 'package:project5/pages/fourth.dart'; // Предположим, что четвертая страница называется FourthPage

class BottomBarPage extends StatefulWidget {
  final String name;
  final String email;
  final String phoneNumber;

  BottomBarPage({required this.name, required this.email, required this.phoneNumber});

  @override
  _BottomBarPageState createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Проект 5'),
        backgroundColor: Colors.grey,
      ),
      body: _buildPage(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.tab, color: Colors.grey),
            label: '1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tab, color: Colors.grey),
            label: '2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tab, color: Colors.grey),
            label: '3',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tab, color: Colors.grey),
            label: '4',
          ),
        ],
      ),
    );
  }

  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return FirstPage(); 
      case 1:
        return SecondPage();
      case 2:
        return ThirdPage();
      case 3:
        return FourthPage(); 
      default:
        return Container();
    }
  }
}
