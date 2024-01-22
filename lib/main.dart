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
      child: Center(
        child: Container(
          constraints: BoxConstraints.tight(Size(200, 200)), // tight는 빡빡함
          color: Colors.red,
          child: Container(
            width: 50,
            height: 50,
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
}

