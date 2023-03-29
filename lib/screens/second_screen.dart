import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  String msg = "Second Screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.verified, size: 60, color: Colors.green),
                SizedBox(width: 10),
                Text(msg),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  msg = "Sabaidee";
                });
              },
              child: const Text("Click me!"),
            )
          ],
        ),
      ),
    );
  }
}
