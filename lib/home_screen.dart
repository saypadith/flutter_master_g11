import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          SizedBox(height: 24),
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
            onPressed: () {},
            child: const Text("Button"),
          )
        ],
      ),
    );
  }
}
