import 'package:flutter/material.dart';
import 'package:multiprovider_basic/provider/provider1.dart';
import 'package:multiprovider_basic/provider/provider2.dart';
import 'package:multiprovider_basic/screens/wrapper.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<Provider1>(
          create: (BuildContext context) {
            return Provider1();
          },
        ),
        ChangeNotifierProvider<Provider2>(
            create: (BuildContext context) {
          return Provider2();
        })
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    ),
  );
}
