import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Widget 쌓아서 배치"),
      ),
      body: const Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Align(
        alignment: Alignment.center,
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(400)),
        ),
      ),
      Align(
        alignment: Alignment.center,
        child: Container(
          width: 280,
          height: 280,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(400)),
          child: Center(
            child: Text(
              "count 0",
              style: TextStyle(color: Colors.blue, fontSize: 30),
            ),
          ),
        ),
      ),
    ]);
  }
}
