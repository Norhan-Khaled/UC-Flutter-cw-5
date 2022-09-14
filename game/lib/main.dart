import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var no1 = 1;
  var no2 = 2;

  void play() {
    no1 = Random().nextInt(3) + 1;
    no2 = Random().nextInt(3) + 1;

    setState(() {});
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[400],
          title: Text('Rock Paper Scissors'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  play();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        'assets/i_$no1.png',
                        height: 120,
                        width: 120,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        'assets/i_$no2.png',
                        height: 120,
                        width: 120,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
              ),
              Container(
                width: 100,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple[300],
                  ),
                  onPressed: () {
                    play();
                  },
                  child: Text('Play'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
