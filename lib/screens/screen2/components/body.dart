import 'package:flutter/material.dart';
import 'package:multiprovider_basic/provider/provider2.dart';
import 'package:multiprovider_basic/screens/screen1/screen1.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _provider2 = Provider.of<Provider2>(context);
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          _provider2.value.toString(),
          style: const TextStyle(fontSize: 50),
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
              
              heroTag: "btn3",
              onPressed: () {
                _provider2.increment();
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
              
              heroTag: "btn4",
              onPressed: () {
                _provider2.decrement();
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
                MaterialPageRoute(builder: (context) => const Screen1()));
          },
          child: const Text('Screen1'),
        )
      ],
    );
  }
}
