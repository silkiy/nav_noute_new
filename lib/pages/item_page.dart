import 'package:flutter/material.dart';

import '../models/items.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    final Item arguments = ModalRoute.of(context)?.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text("Item Description"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: "anjas",
              child: Image.asset(arguments.gambar),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(24),
                  child: Text(
                    arguments.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rp." + arguments.price.toString(),
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Center(
              child: Container(
                height: 200,
                width: 700,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.grey[100],
                ),
                child: Text(""),
              ),
            ),
            Container(
              margin: EdgeInsets.all(24),
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/cart", arguments: {'nama': arguments.name, 'gambar': arguments.gambar, 'price': arguments.price});
                },
                style: ElevatedButton.styleFrom(
                  // backgroundColor:
                ),
                child: Text("Tambah ke Keranjang"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
