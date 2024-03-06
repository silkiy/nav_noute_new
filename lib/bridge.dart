import 'package:flutter/material.dart';
import 'pages/cart.dart';
import 'pages/home.dart';
import 'pages/item_page.dart';

class bridge extends StatelessWidget {
  const bridge({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        '/': (context) => home(),
        '/item': (context) => ListItem(),
        '/cart': (context) => Cart(),
      },
      title: "Click and Go!!",
      darkTheme: ThemeData.dark(),
    );
  }
}
