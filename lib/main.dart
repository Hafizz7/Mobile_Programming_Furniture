import 'package:flutter/material.dart';
import 'package:furniture/bottom_nav.dart';
import 'input_furniture_page.dart';
import 'home_page.dart';
import 'about.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/' :(context) => const MyHomePage(),
        '/BottomNav' :(context) => const BottomNavScreen(),
        '/my' :(context) => const MyApp(),
        '/halaman2' : (context) => Input_Page(),
        '/about' : (context) => const About_Page(),
      },
      initialRoute: '/BottomNav',
    );
  }
}