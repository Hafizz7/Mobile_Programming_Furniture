import 'package:flutter/material.dart';
import 'package:furniture/bottom_nav.dart';
// import 'package:furniture/main.dart';
import 'package:introduction_screen/introduction_screen.dart';

class intorduction extends StatelessWidget {
  const intorduction({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(      
      next: Text("Selanjutnya"),
      done: Text("Selesai"),
      onDone: () {
        Navigator.of(context).pop();
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return BottomNavScreen();
            },
          ),
        );
      },      
      pages: [                        
        PageViewModel(
          title: "EleganHome Furnishings",
          body: "Menghadirkan Elegansi dalam Setiap Ruangan Anda",                    
          image: Image.network("https://iili.io/JfQsoIn.png")
        ),
        PageViewModel(
          title: "living room furniture",
          body: "Kenyamanan dan Estetika Bertemu di Ruang Tamu Anda",
          image: Image.network("https://iili.io/Jf47wcQ.jpg")
          // image: Image.network("https://iili.io/Jf47eHB.jpg")
        ),
        PageViewModel(
          title: "Stylish bed design",
          body: "Tingkatkan Kualitas Hidup Anda dengan Furniture Berkualitas di Kamar Tidur",
          image: Image.network("https://iili.io/JfQSwF9.jpg"),
        ),
        PageViewModel(
          title: "Cozy living room.",
          body: "Kreasikan Ruang Tamu Anda dengan Koleksi Furniture Elegan Kami",
          image: Image.network("https://iili.io/Jf47eHB.jpg")
        ),
      ],
    );
  }
}