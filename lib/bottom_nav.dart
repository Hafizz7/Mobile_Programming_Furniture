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
      bottomNavigationBar: BottomNavigationBar(        
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: "Add",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "About",
          ),
        ],
      ),
    );
  }
}
