import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Widget 비율로 배치"),),
      body: const Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(color: Colors.blue, height: 200,),
        Expanded(child: Container(color: Colors.red, height: 100,)), // 자식 크기 상관 없이 꽉채움
        Flexible(child: Container(color: Colors.blue, height: 100,)) // 자식 크기에 따라 채워지나 없다면 꽉 채움
      ],
    );
  }
}
