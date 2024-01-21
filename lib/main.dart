import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Widget 좌우 배치"),),
      body: const Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: Text(
              "Container 1",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
            child: Text(
              "Container 2",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            child: Text(
              "Container 3",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
