import 'package:flutter/material.dart';
import 'package:furniture/provider/provider.dart';
import 'package:furniture/setting.dart';
// import 'package:furniture/widgets/status.dart';
import 'package:provider/provider.dart';

class About_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final statusProvider = Provider.of<StatusProvider>(context);
    final status = statusProvider.status;
    // final currentIndex = statusProvider.currentIndex;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,          
          actions: [
            IconButton(
              icon: Icon(Icons.settings, color: Theme.of(context).indicatorColor),
              onPressed: () {
                Navigator.push(                        
                    context,
                    MaterialPageRoute(
                      builder: (context) => Setting(),
                    ),
                  );
              },
            ),
          ],
        ),
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
                        onTap: () {
                          statusProvider.updateStatus(!status);
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                          width: status ? 300 : 150,
                          height: status ? 300 : 150,
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
