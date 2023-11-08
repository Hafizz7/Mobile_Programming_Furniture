import 'package:flutter/material.dart';
import 'package:furniture/provider/provider.dart';
import 'package:provider/provider.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    final statusProvider = Provider.of<StatusProvider>(context);
    ThemeMode theme = statusProvider.themeMode;
    String themee;
    themee = statusProvider.theme;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 400,
              height: 50,
              child: GestureDetector(
                  onTap: () {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Choose Theme'),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              ListTile(
                                title: Text('System'),
                                leading: Radio(
                                  value: ThemeMode.system,
                                  groupValue: theme,
                                  onChanged: (value) {
                                    statusProvider
                                        .changeTheme(ThemeMode.system);
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                              ListTile(
                                title: Text('Light'),
                                leading: Radio(
                                  value: ThemeMode.light,
                                  groupValue: theme,
                                  onChanged: (value) {
                                    statusProvider.changeTheme(ThemeMode.light);
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                              ListTile(
                                title: Text('Dark'),
                                leading: Radio(
                                  value: ThemeMode.dark,
                                  groupValue: theme,
                                  onChanged: (value) {
                                    statusProvider.changeTheme(ThemeMode.dark);
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Row(                    
                    children: [
                      SizedBox(width: 20),
                      Icon(
                        Icons.brightness_6_outlined,
                        color: Theme.of(context).cardColor,
                        size: 24,
                      ),
                      SizedBox(width: 10),
                      Column(
                        children: <Widget>[
                          const Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Theme',
                                  style: TextStyle(fontSize: 20))),
                          Align(
                            alignment: Alignment.centerLeft,
                            child:
                                Text('$themee', style: TextStyle(fontSize: 16)),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            Container(
              width: 400,
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      statusProvider.updateColor(0);
                    },
                    
                    child: Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 100,
                      child: Text("Default"),
                      decoration: BoxDecoration(                        
                        border: Border.all(
                          color: Colors.black, // Border color
                          width: 2.0, // Border width
                        ),
                      ),                      
                      margin: EdgeInsets.all(8),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      statusProvider.updateColor(1);
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 207, 172, 172),
                        border: Border.all(
                          color: Colors.black, // Border color
                          width: 2.0, // Border width
                        ),
                      ),                      
                      margin: EdgeInsets.all(8),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      statusProvider.updateColor(2);
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 92, 133, 167),
                        border: Border.all(
                          color: Colors.black, // Border color
                          width: 2.0, // Border width
                        ),
                      ),                      
                      margin: EdgeInsets.all(8),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      statusProvider.updateColor(3);
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(143, 76, 175, 79),
                        border: Border.all(
                          color: Colors.black, // Border color
                          width: 2.0, // Border width
                        ),
                      ),                      
                      margin: EdgeInsets.all(8),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      statusProvider.updateColor(4);
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 175, 76, 158),
                        border: Border.all(
                          color: Colors.black, // Border color
                          width: 2.0, // Border width
                        ),
                      ),                      
                      margin: EdgeInsets.all(8),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      statusProvider.updateColor(5);
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(143, 190, 108, 40),
                        border: Border.all(
                          color: Colors.black, // Border color
                          width: 2.0, // Border width
                        ),
                      ),                      
                      margin: EdgeInsets.all(8),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
