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
    return Stack(
      children: [
        Container(
          width: 500,
          height: 400,
          color: Colors.black,
        ),
        Container(
          width: 400,
          height: 300,
          color: Colors.red,
        ),
        Container(
          width: 300,
          height: 200,
          color: Colors.green,
        ),
        Align(
          alignment: const Alignment(1, 0),
          child: Container(
            width: 200,
            height: 100,
            color: Colors.blue,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 100,
            height: 50,
            color: Colors.yellow,
          ),
        ),
      ],
    );
  }
}
