import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Favorite.dart';
import 'input_furniture_page.dart';
import 'home_page.dart';
import 'about.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen();

  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    MyHomePage(),
    Favorite_Page(),
    Input_Page(),
    About_Page(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: CupertinoTabBar( // Mengganti BottomNavigationBar menjadi CupertinoTabBar
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home), // Mengganti ikon ke CupertinoIcons
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart), // Mengganti ikon ke CupertinoIcons
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.add), // Mengganti ikon ke CupertinoIcons
            label: "Add",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person), // Mengganti ikon ke CupertinoIcons
            label: "About",
          ),
        ],        
        activeColor: Theme.of(context).iconTheme.color
      ),      
    );
  }
}