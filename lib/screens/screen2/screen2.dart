import 'package:flutter/material.dart';

import 'components/body.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen-2'),
      ),
      body: const Body(),
    );
  }
}
