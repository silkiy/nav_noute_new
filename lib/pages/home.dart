import 'package:flutter/material.dart';
import '../models/items.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(name: 'Legion 9',deskripsi: "", gambar: "assets/Legion_9.jpg", price: "70.000.000"),
      Item(name: 'Rog Zephyrus',deskripsi: "", gambar: "assets/Rog_Zephyrus_duo.jpg", price: "35.000.000"),
      Item(name: 'Mac Book Pro m1',deskripsi: "", gambar: "assets/macbook_pro_m1.jpg", price: "30.000.000"),
      Item(name: 'Lenovo Ideapad Gaming',deskripsi: "", gambar: "assets/lenovo_ideapad_Gaming.jpg", price: "12.000.000"),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                child: Container(
                  margin: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Image.asset(item.gambar),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Text(item.name, style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),),
                      ),
                      Row(
                        children: [
                          Expanded(child: Text(item.deskripsi)),
                          Expanded(child: Text("Rp." + item.price.toString(), textAlign: TextAlign.end,)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
