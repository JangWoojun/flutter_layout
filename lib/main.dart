import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Widget 상하 배치"),),
      body: const Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 200,
          height: 100,
          color: Colors.red,
          child: Text(
            "Container 1",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          width: 200,
          height: 100,
          color: Colors.green,
          child: Text(
            "Container 2",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          width: 200,
          height: 100,
          color: Colors.blue,
          child: Text(
            "Container 3",
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
