import 'package:flutter/material.dart';
import 'package:furniture/main.dart';
import 'home_page.dart';


class Input_Page extends StatefulWidget {
  // Input_Page(void add);

  // final Function(DaftarFurniture) onDataAdded;
  // const Input_Page({Key? key, required this.onDataAdded}) : super(key: key);
  @override
  State<Input_Page> createState() => _Input_PageState();
}

class _Input_PageState extends State<Input_Page> {
  TextEditingController nama_kursi = TextEditingController();
  TextEditingController Rating = TextEditingController();
  TextEditingController harga = TextEditingController();
  @override
  Widget build(BuildContext context) {    
    return Scaffold(      
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: nama_kursi,
                decoration: InputDecoration(labelText: 'Nama Furniture'),
              ),
              TextFormField(
                controller: Rating,
                decoration: InputDecoration(labelText: 'Rating'),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                controller: harga,
                decoration: InputDecoration(labelText: 'Harga'),
                keyboardType: TextInputType.number,
              ),
              ElevatedButton(
                onPressed: () {
                  // Tambahkan kursi baru ke dalam list
                  DaftarFurniture newFurniture = DaftarFurniture(
                    imageAsset: "assets/pngegg (2).png",
                    name: nama_kursi.text,
                    rating: double.tryParse(Rating.text) ?? 0.0,
                    price: double.tryParse(harga.text) ?? 0.0,
                  );
                  // widget.onDataAdded(newSeat);
                  // (newSeat);
                  furniture.add(newFurniture);                  
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyApp(),
                    ),
                  );
                  nama_kursi.clear();
                  Rating.clear();
                  harga.clear();
                },
                child: Text('Tambah Furniture'),
              ),
            ],
          ),
        ),
      ),      
    );
  }
}
