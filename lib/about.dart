import 'package:flutter/material.dart';

class About_Page extends StatefulWidget {
  const About_Page({super.key});

  @override
  State<About_Page> createState() => _About_PageState();
}

class _About_PageState extends State<About_Page> {
  bool status = false;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(        
        body: ListView(
          children: [            
            Container(              
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.8,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            status = !status;
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn,                          
                          width: status? 300: 150,
                          height: status? 300: 150,                          
                          
                      decoration: const ShapeDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: OvalBorder(),
                        image: DecorationImage(
                            image: AssetImage("assets/Orang.jpg"),
                            fit: BoxFit.cover),
                      ),                        
                        ),
                      ),                                            
                    ),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(height: 18),
                          Text(
                            'Muh. Hafiz',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          SizedBox(height: 18),
                          Text(
                            '2109106045',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          SizedBox(height: 18),
                          Text(
                            'A’21',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          SizedBox(height: 18),
                          Text(
                            "Jangan Mencari Kebenaran di Balik Kesalahan",
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyMedium,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}