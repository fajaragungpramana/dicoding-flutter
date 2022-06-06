import 'package:flutter/material.dart';

import 'package:dicoding_flutter/detail_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FirstScreen',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const DetailScreen());
  }
}
