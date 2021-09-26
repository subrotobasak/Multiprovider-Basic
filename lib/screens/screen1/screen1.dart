import 'package:flutter/material.dart';
import 'components/body.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen-1'),),
      body: const Body(),
    );
  }
}
