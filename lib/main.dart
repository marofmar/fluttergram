
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'style.dart' as style;


void main() {
  runApp(MaterialApp(
    theme: style.theme,
    home: MyApp()
  )
  );
}

class Posting extends StatelessWidget {
  const Posting({super.key, required this.imageLocation, required this.text});
  final String imageLocation;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(imageLocation),
          Text(text)
        ],
    );
  }
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var tab = 0;
  var homePage = Container(
    padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
    child: ListView(children: [
      Posting(imageLocation: 'assets/catSnatch.png', text: 'first'),
      Posting(imageLocation: 'assets/catSnatch.png', text: 'second',),
      Posting(imageLocation: 'assets/catSnatch.png', text: 'third')
    ],
    ),
  );
  var shopPage = Container();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.favorite_rounded, color: Colors.pinkAccent),
        title: Text('Fluttergram'),
        actions: <Widget>[
          IconButton(onPressed:() {}, icon: Icon(Icons.message)),
          IconButton(onPressed: () {}, icon: Icon(Icons.add_alert))
        ],
      ),
      body: [homePage, shopPage][tab],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (i) {
          setState(() {
            tab = i;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.shop_outlined), label: 'Shop',),
        ],
      ),
    );
   }
}
