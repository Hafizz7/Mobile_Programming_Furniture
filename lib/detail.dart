import 'package:flutter/material.dart';
import 'package:furniture/home_page.dart';

class DetailPage extends StatelessWidget {
  final DaftarFurniture item;

  const DetailPage({required this.item, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Container(
        child: Column(          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag:
                  "Gambar${item.imageAsset}", // Berikan tag yang sama dengan gambar yang sesuai
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeIn,
                width: item.isEnlarged
                    ? 800
                    : 500, // Atur lebar gambar saat diperbesar
                child: Image.asset(
                  item.imageAsset,
                  width: 500,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(                         
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: 'Nama: ${item.name}',
                    child: Container(   
                      margin: EdgeInsets.only(left: 5),                                 
                      child: Text(
                        item.name,
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),                  
                  Hero(
                    tag: 'Harga: ${item.price}',
                    child: Container(           
                      margin: EdgeInsets.only(top: 6, left: 5),           
                      child: Text(
                        "Harga: Rp.${item.price}",
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Hero(
                    tag: 'Rating: ${item.rating}',
                    child: Container(                      
                      margin: EdgeInsets.only(top: 4, left: 5),
                      child: Text(
                        "Rating: ${item.rating}",
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Hero(                    
                    tag: 'Deskripsi: ${item.deskripsi}',
                    child: Container(                      
                      margin: EdgeInsets.only(top: 4, left: 5),
                      child: Text(
                        "Deskripsi: ${item.deskripsi}",
                        style: const TextStyle(fontSize: 20),
                      ),
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
// sdsda