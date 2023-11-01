import 'package:flutter/material.dart';
import 'package:furniture/bottom_nav.dart';
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
  TextEditingController deskripsi = TextEditingController();
  TextEditingController Rating = TextEditingController();
  TextEditingController harga = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Future<dynamic> alert(BuildContext context, String judul, String konten) {
      return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text(judul),
              content: Text(konten),
              actions: [
                TextButton(
                    onPressed: () {
                      // Tambahkan kursi baru ke dalam list
                      DaftarFurniture newFurniture = DaftarFurniture(
                        imageAsset: "assets/pngegg (2).png",
                        name: nama_kursi.text,
                        deskripsi: deskripsi.text,
                        rating: double.tryParse(Rating.text) ?? 0.0,
                        price: double.tryParse(harga.text) ?? 0.0,
                      );
                      // widget.onDataAdded(newSeat);
                      // (newSeat);
                      furniture.add(newFurniture);

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BottomNavScreen(),
                        ),
                      );
                      nama_kursi.clear();
                      Rating.clear();
                      harga.clear();
                    },
                    child: Text("Oke")),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancel")),
              ],
            );
          });
    }

    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 5),
              TextFormField(
                controller: nama_kursi,
                decoration: InputDecoration(labelText: 'Nama Furniture'),
              ),
              SizedBox(height: 15),
              TextFormField(
                controller: deskripsi,
                decoration: InputDecoration(labelText: 'Deskripsi'),
              ),
              SizedBox(height: 15),
              TextFormField(
                controller: Rating,
                decoration: InputDecoration(labelText: 'Rating'),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 15),
              TextFormField(
                controller: harga,
                decoration: InputDecoration(labelText: 'Harga'),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  alert(
                      context, "Tambah Data", "Yakin ingin menambahkan data?");
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
