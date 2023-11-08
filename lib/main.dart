import 'package:flutter/material.dart';
import 'package:furniture/bottom_nav.dart';
import 'package:furniture/introduction.dart';
import 'package:furniture/provider/provider.dart';
import 'package:provider/provider.dart';
import 'input_furniture_page.dart';
import 'home_page.dart';
import 'about.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => StatusProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    final statusProvider = Provider.of<StatusProvider>(context);
    Color seletPrimaryWatch;
    Color seletPrimaryWatch2;
    Color selectScaffold;

    switch (statusProvider.pilihcolor) {
      case 0:
        seletPrimaryWatch2 = Color.fromARGB(209, 253, 253, 253);
        seletPrimaryWatch = Color.fromARGB(209, 32, 32, 32);
        selectScaffold = Color.fromARGB(209, 32, 32, 32);
        break;
      case 1:
        seletPrimaryWatch2 = Color.fromARGB(209, 253, 253, 253);
        seletPrimaryWatch = Color.fromARGB(255, 207, 172, 172);
        selectScaffold = Color.fromARGB(255, 247, 222, 222);
        break;
      case 2:
        seletPrimaryWatch2 = Color.fromARGB(209, 253, 253, 253);
        seletPrimaryWatch = Color.fromARGB(255, 92, 133, 167);
        selectScaffold = Color.fromARGB(255, 173, 198, 219);

        break;
      case 3:
        seletPrimaryWatch2 = Color.fromARGB(209, 253, 253, 253);
        seletPrimaryWatch = const Color.fromARGB(143, 76, 175, 79);
        selectScaffold = Color.fromARGB(143, 154, 221, 157);
        break;
      case 4:
        seletPrimaryWatch2 = Color.fromARGB(209, 253, 253, 253);
        seletPrimaryWatch = Color.fromARGB(255, 175, 76, 158);
        selectScaffold = Color.fromARGB(193, 214, 144, 202);
        break;
      case 5:
        seletPrimaryWatch2 = Color.fromARGB(209, 253, 253, 253);
        seletPrimaryWatch = Color.fromARGB(143, 190, 108, 40);
        selectScaffold = Color.fromARGB(143, 247, 171, 108);
        break;
      default:
        seletPrimaryWatch2 = Color.fromARGB(209, 253, 253, 253);
        seletPrimaryWatch = Colors.amber;
        selectScaffold = const Color.fromARGB(255, 236, 213, 143);
    }
    ColorScheme darkScheme = ColorScheme.fromSeed(
      seedColor: seletPrimaryWatch,
      brightness: Brightness.dark,
    );
    ColorScheme lightScheme = ColorScheme.fromSeed(
      seedColor: seletPrimaryWatch,
      brightness: Brightness.light,
    );
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: statusProvider.pilihcolor == 0
            ? seletPrimaryWatch2
            : seletPrimaryWatch,

        colorScheme: lightScheme,
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
        )),
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
        colorScheme: darkScheme,
        switchTheme: SwitchThemeData(
          thumbColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return seletPrimaryWatch;
            }
            return Colors.grey;
          }),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: seletPrimaryWatch,
        ),
        scaffoldBackgroundColor: selectScaffold,
        // colorScheme:  seletPrimaryWatch,
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
        )),
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
      themeMode: Provider.of<StatusProvider>(context).themeMode,
      routes: {
        '/': (context) => const MyHomePage(),
        '/BottomNav': (context) => BottomNavScreen(),
        '/my': (context) => const MyApp(),
        '/halaman2': (context) => Input_Page(),
        '/about': (context) => About_Page(),
        '/introduction': (context) => const intorduction(),
      },
      initialRoute: '/introduction',
      // home: intorduction(),
    );
  }
}
