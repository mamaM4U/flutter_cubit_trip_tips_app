import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit_trip_tips_app/pages/navpages/bar_item_page.dart';
import 'package:flutter_cubit_trip_tips_app/pages/navpages/home_page.dart';
import 'package:flutter_cubit_trip_tips_app/pages/navpages/search_page.dart';

import 'my_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HomePage(),
    const BarItemPage(),
    const SearchPage(),
    const MyPage()
  ];

  int currentIndex = 0;

  void changeIndex(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: changeIndex,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        elevation: 0,
        items: [
          BottomNavigationBarItem(label: "Home" ,icon: Icon(Icons.apps)),
          BottomNavigationBarItem(label: "Bar" ,icon: Icon(Icons.bar_chart)),
          BottomNavigationBarItem(label: "Search" ,icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: "My" ,icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
