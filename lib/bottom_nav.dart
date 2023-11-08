import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture/provider/provider.dart';
import 'package:provider/provider.dart';
import 'Favorite.dart';
import 'input_furniture_page.dart';
import 'home_page.dart';
import 'about.dart';

class BottomNavScreen extends StatelessWidget {
  // const BottomNavScreen();

  // @override
  // _BottomNavScreenState createState() => _BottomNavScreenState();
  // int currentIndex = 0;
  
  final List<Widget> screens = [
    MyHomePage(),
    Favorite_Page(),
    Input_Page(),
    About_Page(),
  ];

  @override
  
      
  Widget build(BuildContext context) {
    
    final statusProvider = Provider.of<StatusProvider>(context);
    return Scaffold(
      body: screens[statusProvider.currentIndex],
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: statusProvider.currentIndex,
        onTap: (index) {
          statusProvider.updateCurrentIndex(index);
          // setState(() {
          //   currentIndex = index;
          // });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.add),
            label: "Add",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: "About",
          ),
        ],        
        activeColor: Theme.of(context).iconTheme.color
      ),      
    );
  }
}