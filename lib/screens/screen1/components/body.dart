import 'package:flutter/material.dart';
import 'package:multiprovider_basic/provider/provider1.dart';
import 'package:multiprovider_basic/screens/screen2/screen2.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _provider1 = Provider.of<Provider1>(context);
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          'Provider-1',
          style: TextStyle(
            fontSize: _provider1.fontSize.toDouble() == 0.0
                ? 30
                : _provider1.fontSize.toDouble(),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              /*Hero tag use for avoid EXCEPTION: There are multiple heroes
              that share the same tag within a subtree.*/

              heroTag: "btn1",
              onPressed: () {
                _provider1.fontSizeIncrease();
              },
              child: const Icon(Icons.add),
              backgroundColor: Colors.green,
            ),
            const SizedBox(
              width: 20,
            ),
            FloatingActionButton(
              /*Hero tag use for avoid EXCEPTION: There are multiple heroes
              that share the same tag within a subtree.*/

              heroTag: "btn2",
              onPressed: () {
                _provider1.fontSizeDecrease();
              },
              child: const Icon(Icons.remove),
              backgroundColor: Colors.red,
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Screen2()));
          },
          child: const Text('Screen2'),
        )
      ],
    );
  }
}
