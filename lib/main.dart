import 'package:flutter/material.dart';
import 'package:furniture/bottom_nav.dart';
import 'package:furniture/introduction.dart';
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
        brightness: Brightness.light,
        //digunakan pada bottom nav        
        iconTheme: const IconThemeData(
          color: Colors.amber,
          size: 24.0,
        ),
        //digunakan pada about        
        textTheme: const TextTheme(          
          bodyMedium: TextStyle(
            fontSize: 18,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            color: Colors.black,            
          )
        ),        
        //digunakan pada input furniture page
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(
            color: Colors.black,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 239, 253, 41)),
          ),
        ),
        
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.amber,
          textTheme: ButtonTextTheme.primary, 
        ),
        indicatorColor: Colors.black,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        //digunakan pada bottom nav        
        iconTheme: const IconThemeData(
          color: Colors.amber,
          size: 24.0,
        ),
        //digunakan pada about        
        textTheme: const TextTheme(          
          bodyMedium: TextStyle(
            fontSize: 18,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            color: Colors.white,            
          )
        ),        
        //digunakan pada input furniture page
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(
            color: Colors.white,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 239, 253, 41)),
          ),
        ),
        
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.amber,
          textTheme: ButtonTextTheme.primary, 
        ),
        indicatorColor: Colors.white, 
        
      ),
      themeMode: ThemeMode.system,
      routes: {
        '/' :(context) => const MyHomePage(),
        '/BottomNav' :(context) => const BottomNavScreen(),
        '/my' :(context) => const MyApp(),
        '/halaman2' : (context) => Input_Page(),
        '/about' : (context) => const About_Page(),
        '/introduction' : (context) => const intorduction(),
      },
      initialRoute: '/introduction',
      // home: intorduction(),
    );    
  }
}