// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 31, 31, 31),
        body: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 15, 20, 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Elderio",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontFamily: 'TitanOne',
                      //fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ),
            ),

            //horizontal list
            SizedBox(
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                    child: Container(
                      width: 80,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 167, 255, 199),
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.speaker_phone_rounded,
                            size: 35,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                    child: Container(
                      width: 80,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 242, 167, 255),
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.man,
                            size: 35,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                    child: Container(
                      width: 80,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 208, 167),
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.disabled_by_default,
                            size: 35,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                    child: Container(
                      width: 80,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 168, 167, 255),
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.settings_rounded,
                            size: 35,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                    child: Container(
                      width: 80,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 167, 255, 199),
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.app_blocking_rounded,
                            size: 35,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.70,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.4,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 242, 167, 255),
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "All in One Apps",
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.4,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 208, 167),
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Speech to Text",
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.4,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 168, 167, 255),
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Text to Speech",
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
