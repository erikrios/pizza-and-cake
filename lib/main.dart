import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Demo Flutter',
        theme: ThemeData(primarySwatch: Colors.pink),
        home: HomePage(),
      );
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String fileName = 'images/pizza.jpg';

  void selectedImage(int index) {
    setState(() {
      switch (index) {
        case 0:
          this.fileName = 'images/pizza.jpg';
          break;
        case 1:
          this.fileName = 'images/cake.jpeg';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Demo Icon'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.local_pizza),
              onPressed: () {
                selectedImage(0);
              },
            ),
            IconButton(
              icon: Icon(Icons.cake),
              onPressed: () {
                selectedImage(1);
              },
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            Image.asset(
              this.fileName,
              height: 250.0,
              fit: BoxFit.cover,
            )
          ],
        ),
      );
}
