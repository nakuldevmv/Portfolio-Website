import 'package:flutter/material.dart';

class nakuldev extends StatefulWidget {
  const nakuldev({super.key});

  @override
  State<nakuldev> createState() => _nakuldevState();
}

class _nakuldevState extends State<nakuldev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "data",
          style: TextStyle(color: Colors.amber),
        ),
      ),
      body: const Column(
        children: [Text("Nakul")],
      ),
    );
  }
}
