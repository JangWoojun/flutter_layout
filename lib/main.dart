import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Widget 비율로 배치"),
      ),
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
        Expanded( // SingleChildScrollView 내부에서는 Expanded, Flexible 둘다 사용 불뷰
          child: Container(
            color: Colors.blue,
            width: double.infinity,
            height: 200,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Colors.green,
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.symmetric(vertical: 20),
                  ),
                  Container(
                    color: Colors.green,
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.symmetric(vertical: 20),
                  ),
                  Container(
                    color: Colors.green,
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.symmetric(vertical: 20),
                  ),
                  Container(
                    color: Colors.green,
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.symmetric(vertical: 20),
                  ),
                  Container(
                    color: Colors.green,
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.symmetric(vertical: 20),
                  ),
                  Container(
                    color: Colors.green,
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.symmetric(vertical: 20),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          color: Colors.red,
          height: 100,
        )
      ],
    );
  }
}
