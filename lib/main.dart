import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var randomNumber = 0;
  var text = '???';
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 100,
          title: const Text(
            'Número da sorte 🍀',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.black87,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(30, 50, 30, 100),
            child: Column(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Hoje é seu dia de sorte! Clique no botão abaixo e confira!', 
                textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 11, 10, 10),
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text('???',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 120,
                    fontWeight: FontWeight.bold),
                ),
                ElevatedButton(onPressed: () {}, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff8716d5),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                    textStyle: TextStyle(
                      fontSize: 20, 
                      fontWeight: FontWeight.bold,
                    )
                ),
              child: Text('SORTE!')),
              ]),
          )
          ),
      ),
    );
  }
}
