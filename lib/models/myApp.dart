import 'package:flutter/material.dart';
import 'homePage.dart';

class MyApp extends StatefulWidget {
  var tem = Brightness.light;
  int s1 = 0;
  var ic1 = Icons.wb_sunny;
  Color rang1 = Colors.white; // black
  Color rang2 = Colors.black; // white
  Color rang3 = Colors.brown; // teal Accent

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
        brightness: widget.tem,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "TASBEH",
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              temOzgartir();
            });
          },
          child: Icon(
            widget.ic1,
            size: 30.0,
          ),
        ),
        body: HomePage(widget.rang1, widget.rang2, widget.rang3),
      ),
    );
  }

  void temOzgartir() {
    if (widget.s1 == 1) {
      widget.tem = Brightness.light;
      widget.ic1 = Icons.wb_sunny;
      widget.rang1 = Colors.white;
      widget.rang2 = Colors.black;
      widget.rang3 = Colors.brown;
      widget.s1 -= 1;
    } else if (widget.s1 == 0) {
      widget.tem = Brightness.dark;
      widget.ic1 = Icons.brightness_3;
      widget.rang1 = Colors.black;
      widget.rang2 = Colors.white;
      widget.rang3 = Colors.tealAccent;
      widget.s1 += 1;
    } else {
      widget.s1 = 1;
    }
  }
}

