import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: 500,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 48, 53, 146),
                        Color.fromARGB(255, 48, 53, 146),
                        Color.fromARGB(255, 255, 255, 255),
                        Colors.white,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.25, 0.25, 0.25, 0.25]),
                ),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 50, horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Agisna Rizkan Rizkullah S.T',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '5520123041',
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 100,
                width: 100,
                color: Color.fromARGB(255, 48, 53, 146),
                padding: EdgeInsets.all(16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
