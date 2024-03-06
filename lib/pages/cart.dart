import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Cart extends StatefulWidget {
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Card(
              child: Container(
                margin: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Image.asset(arguments['gambar'],),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(bottom: 5, top: 25),
                              child: Text(arguments['nama'], style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),),
                            ),
                            Align(alignment: Alignment.centerLeft , child: Text("Rp." + arguments['price'].toString())),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(height: 26,),
                            Row(
                              children: [
                                FloatingActionButton.small(
                                  onPressed: () {
                                    setState(() {
                                      count++;
                                    });
                                  },
                                  child: Text("+", style: TextStyle(fontSize: 20),),
                                ),
                                SizedBox(width: 16, height: 0,),
                                Text(count.toString()),
                                SizedBox(width: 16, height: 0,),
                                FloatingActionButton.small(
                                  onPressed: () {
                                    setState(() {
                                      if (count > 1) {
                                        count--;
                                      }
                                    });
                                  },
                                  child: Text("-", style: TextStyle(fontSize: 20),),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
