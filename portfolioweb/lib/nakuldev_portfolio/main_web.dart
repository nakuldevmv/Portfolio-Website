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
      // appBar: AppBar(
      //   title: const Text("Nakul </Dev>"),
      //   backgroundColor: Colors.grey,
      //   shape: const BeveledRectangleBorder(
      //       side: BorderSide(color: Colors.black, width: 2)),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 70,
              margin: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 162, 162, 162),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Nakul </Dev>"),
                  Text("data"),
                  Text("data"),
                  Text("data")
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "WEBSITE UNDER DEVELOPMENT",
              style:
                  TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
            ),
            const Text(
              "~ Nakul </Dev>",
              style: TextStyle(
                  color: Color.fromARGB(255, 218, 218, 218),
                  fontWeight: FontWeight.w100),
            )
          ],
        ),
      ),
    );
  }
}
