import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Hello, World!"),
            ),
            body: const Center(
                child: BiggerText(text: "Hello, World!")
            )
        )
    );
  }
}

class Heading extends StatelessWidget {

  final String text;

  const Heading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold
      ),
    );
  }

}

class BiggerText extends StatefulWidget {

  final String text;

  const BiggerText({Key? key, required this.text}) : super(key: key);

  @override
  _BiggerTextState createState() => _BiggerTextState();

}

class _BiggerTextState extends State<BiggerText> {

  double _textSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(widget.text, style: TextStyle(fontSize: _textSize)),
        ElevatedButton(
            onPressed: () {
              setState(() {
                _textSize = 32;
              });
            },
            child: const Text("Perbesar"))
      ],
    );
  }

}