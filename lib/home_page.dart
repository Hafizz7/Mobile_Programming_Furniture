import 'package:flutter/material.dart';
import 'package:furniture/detail.dart';
// bool isEnlarged = false;
void main() {
  runApp(const MyHomePage());
}

final List<DaftarFurniture> furniture = []; // List untuk menyimpan kursi-kursi

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {  
  void onDataAdded(DaftarFurniture newData) {
    setState(() {
      furniture.add(newData);
    });
  }

  int currentIndex = 0;
  Widget build(BuildContext context) {
    return Scaffold(      
      body: ListView(
        children: [
          // Screen.elementAt(currentIndex),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.05,
                child: Text(
                  "Hafiz",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Container(
              alignment: Alignment.centerLeft,
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.26,
              decoration: ShapeDecoration(
                color: Color.fromARGB(255, 255, 254, 254),
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1),
                    borderRadius: BorderRadius.circular(9)),
                shadows: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: TextField(
                  decoration: const InputDecoration(
                    hintText: 'Cari...',
                    prefixIcon: Icon(Icons.search),
                  ),
                  onChanged: (value) {},
                  autofocus: false),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6, right: 6),
            child: Container(
              margin: EdgeInsets.only(top: 20),
              // height: 160,
              height: MediaQuery.of(context).size.height * 0.26,
              decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(10),
                color: Colors.yellow,
                image: const DecorationImage(
                    image: AssetImage("assets/gambarfurniture (1).jpg"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        shape: BoxShape.circle,
                        // color: Colors.black,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4, bottom: 4),
                        child: Container(
                          width: 80,
                          height: MediaQuery.of(context).size.height * 0.05,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            image: const DecorationImage(
                              image: AssetImage("assets/seater-sofa.png"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        shape: BoxShape.circle,
                        // color: Colors.black,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4, bottom: 4),
                        child: Container(
                          width: 80,
                          height: MediaQuery.of(context).size.height * 0.05,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            image: const DecorationImage(
                              image: AssetImage("assets/seater-sofa.png"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        shape: BoxShape.circle,
                        // color: Colors.black,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4, bottom: 4),
                        child: Container(
                          width: 80,
                          height: MediaQuery.of(context).size.height * 0.05,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            image: const DecorationImage(
                              image: AssetImage("assets/seater-sofa.png"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        shape: BoxShape.circle,
                        // color: Colors.black,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4, bottom: 4),
                        child: Container(
                          width: 80,
                          height: MediaQuery.of(context).size.height * 0.05,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            image: const DecorationImage(
                              image: AssetImage("assets/seater-sofa.png"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        shape: BoxShape.circle,
                        // color: Colors.black,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4, bottom: 4),
                        child: Container(
                          width: 80,
                          height: MediaQuery.of(context).size.height * 0.05,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            image: const DecorationImage(
                              image: AssetImage("assets/seater-sofa.png"),
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Add more containers as needed
                  ],
                ),
              ),
            ),
          ),

          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: const Text(
              "Trending Furniture",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          Container(
            child: Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.14,
                        width: MediaQuery.of(context).size.width * 0.5,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(20),
                          // color: Colors.black,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 4, bottom: 4),
                          child: Container(
                            width: 80,
                            height: MediaQuery.of(context).size.height * 0.05,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              image: const DecorationImage(
                                image: AssetImage("assets/seater-sofa.png"),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.14,
                        width: MediaQuery.of(context).size.width * 0.5,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(20),
                          // color: Colors.black,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 4, bottom: 4),
                          child: Container(
                            width: 80,
                            height: MediaQuery.of(context).size.height * 0.05,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              image: const DecorationImage(
                                image: AssetImage("assets/seater-sofa.png"),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.14,
                        width: MediaQuery.of(context).size.width * 0.5,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(20),
                          // color: Colors.black,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 4, bottom: 4),
                          child: Container(
                            width: 80,
                            height: MediaQuery.of(context).size.height * 0.05,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              image: const DecorationImage(
                                image: AssetImage("assets/seater-sofa.png"),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.14,
                        width: MediaQuery.of(context).size.width * 0.5,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(20),
                          // color: Colors.black,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 4, bottom: 4),
                          child: Container(
                            width: 80,
                            height: MediaQuery.of(context).size.height * 0.05,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              image: const DecorationImage(
                                image: AssetImage("assets/seater-sofa.png"),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              'All Product',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          Container(
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.80,
              ),
              itemCount: furniture.length,
              itemBuilder: (_, i) {
                return InkWell(
                  onTap: () {
                    
                    // Di sini, Anda dapat menggunakan nilai i untuk mengidentifikasi item yang diklik.
                    // Anda dapat mengakses item dengan furniture[i].
                    // Misalnya: DaftarFurniture itemDiklik = furniture[i];
                    // Lakukan sesuatu dengan itemDiklik di sini.
                     Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => DetailPage(item: furniture[i]),
  ));
                  },              
                  child: buildContentItem(furniture[i]),                  
                  
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildContentItem(DaftarFurniture item) {  
  return IntrinsicHeight(
    // margin: EdgeInsets.all(2),
    // padding: EdgeInsets.all(2),
    child: Container(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          width: 200,
          // height: 2200, // Atur tinggi se
          decoration: BoxDecoration(
            border: Border.all(width: 1),
            borderRadius: BorderRadius.circular(10),
          ),

          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(5.0),                
                  child: AnimatedContainer(                
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                    width: item.isEnlarged? 800: 200, // Atur lebar gambar saat diperbesar
                    // height: isEnlarged ? 3000 : 5000, // Atur tinggi gambar saat diperbesar
                    child: Image.asset(
                      item.imageAsset,
                      width: 200,
                    ),
                  ),                
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 6),
                width: 200,
                // decoration: BoxDecoration(
                //   // border: Border.all(width: 1),
                //   // color: Colors.white,
                // ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${item.name}",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    Text("${item.rating}"),
                    Text("Rp. ${item.price.toStringAsFixed(2)}"),                    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class DaftarFurniture {
  bool isEnlarged = false;
  final String imageAsset;
  final String name;
  final double rating;
  final double price;
  final String deskripsi;

  DaftarFurniture({
    required this.imageAsset,
    required this.name,
    required this.rating,
    required this.price,
    required this.deskripsi
  });
  void toggleEnlarged() {
    isEnlarged = !isEnlarged;
  }
}

