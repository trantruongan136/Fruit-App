

import 'package:flutter/material.dart';
import 'package:fruit_app/screens/nav_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        // drawerScrimColor: Colors.orangeAccent[200],
        drawer: Navbar(),
        appBar: AppBar(
          foregroundColor: Colors.orangeAccent[200],
          // leading: IconButton(onPressed: (){
          // }, icon: Icon(Icons.menu), color: Colors.orangeAccent[200],),
          actions: [
            IconButton(onPressed: (){}, 
            icon: Icon(Icons.shopping_bag, color: Colors.orangeAccent[200],))
          ],
          backgroundColor: Colors.white,
        ),
        body: Container(
          child: Text('Hello'),
        ),
      ),
    );
  }
}