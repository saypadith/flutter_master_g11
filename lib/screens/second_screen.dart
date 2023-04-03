import 'package:flutter/material.dart';
import 'package:flutter_starter/screens/third_screen.dart';

class SecondScreen extends StatefulWidget {
  SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  String msg = "";

  @override
  void initState() {
    msg = "Hello";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.verified, size: 60, color: Colors.green),
                  SizedBox(width: 10),
                  Text(msg),
                ],
              ),
              Image.asset(
                "assets/images/corgi.png",
                width: 240,
              ),
              const SizedBox(height: 12),
              ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Image.asset(
                  "assets/images/corgi.png",
                  width: 240,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    msg = "Sabaidee";
                  });
                },
                child: const Text("Click me!"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ThirdScreen();
                  }));
                },
                child: const Text("3rd Screen"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
