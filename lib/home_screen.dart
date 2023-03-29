import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/screens/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(24),
                  child: Image.network(
                    "https://picsum.photos/300/200",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 40,
                  top: 50,
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(28),
                        ),
                        color: Colors.white.withOpacity(0.7)),
                    child: const Center(child: Text("10,000 ກີບ")),
                  ),
                ),
                const Positioned(
                  top: 90,
                  left: 60,
                  child: SizedBox(
                    width: 200,
                    child: Text(
                      "Place to visit in Vientiane",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 150,
                  height: 100,
                  color: Colors.red,
                  child: const Center(child: Text("A")),
                ),
                Container(
                  width: 150,
                  height: 100,
                  color: Colors.blue,
                  child: const Center(child: Text("B")),
                ),
              ],
            ),

            Container(
              width: 300,
              height: 100,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(28),
                      bottomRight: Radius.circular(28)),
                  color: Colors.amber),
              child: const Center(
                  child: Text("Container",
                      style: TextStyle(
                          fontSize: 30,
                          letterSpacing: 8.6,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))),
            ),
            Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                  child: const Center(child: Text("d")),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.grey,
                  child: const Center(child: Text("e")),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.purple,
                  child: const Center(child: Text("f")),
                ),
              ],
            ),
            const SizedBox(height: 24),
            // check the platform to create the right button
            Platform.isIOS
                ? CupertinoButton(
                    onPressed: () {},
                    child: const Text("iOS Button"),
                  )
                : ElevatedButton(
                    onPressed: () {},
                    child: const Text("Android Button"),
                  ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondScreen(),
                    ));
              },
              child: const Text("Go to second screen"),
            )
          ],
        ),
      ),
    );
  }
}
