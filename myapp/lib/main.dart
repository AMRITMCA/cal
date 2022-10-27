import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final yourName = TextEditingController();

  final partnersName = TextEditingController();

  int? lovepercentage;

  void calculateLove() {
    setState(() {
      lovepercentage = Random().nextInt(100);
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("calculator"),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
        body: Column(
          children: [
            TextField(
              controller: yourName,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: partnersName,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.favorite),
              onPressed: calculateLove,
              label: Text(
                'Calculator',
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              ),
            ),
            if (lovepercentage!=null) Text('${yourName.text} loves ${partnersName.text}$lovepercentage')
          ],
        ),
      ),
    );
  }
}
