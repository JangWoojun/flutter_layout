import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Widget 상하좌우 배치"),),
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
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
        Container(
          width: 300,
          height: 120,
          color: Colors.grey,
          child: Text("Container 4", style: TextStyle(color: Colors.white),),
        )
      ]
    );
  }
}
