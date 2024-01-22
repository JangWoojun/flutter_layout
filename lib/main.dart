import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HomeWidget()
  ));
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ConstraintsWidget(),
      ),
    );
  }
}

class ConstraintsWidget extends StatelessWidget {
  const ConstraintsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      color: Colors.blue,
      child: OverflowBox( // 부모의 제약조건을 따르지 않음
        child: Container(
          height: 700,
          width: 300,
          color: Colors.red,
        ),
      )
      );
  }
}

