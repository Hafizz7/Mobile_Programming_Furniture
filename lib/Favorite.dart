import 'package:flutter/material.dart';

class Favorite_Page extends StatefulWidget {
  const Favorite_Page({super.key});

  @override
  State<Favorite_Page> createState() => _Favorite_PageState();
}

class _Favorite_PageState extends State<Favorite_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            "Kosong"
          ),
        ),
      ),
    );
  }
}