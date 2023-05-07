import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Muhamad Kevin Attarshah',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Muhamad Kevin Attarshah'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List<Color> _colors = [
    Color.fromARGB(255, 255, 220, 250),
    Color.fromARGB(255, 255, 203, 247),
    Color.fromARGB(255, 255, 172, 243),
    Color.fromARGB(255, 255, 144, 238),
    Color.fromARGB(255, 255, 106, 233),
    Color.fromARGB(255, 255, 97, 231),
    Color.fromARGB(255, 255, 62, 226),
    Color.fromARGB(255, 255, 25, 220),
    Color.fromARGB(255, 168, 0, 143),
    Color.fromARGB(255, 121, 0, 103),
    Color.fromARGB(255, 66, 7, 57),
    Color.fromARGB(255, 39, 9, 35),
  ];

  final List<String> _texts = [
    'one', 'two', 'three', 'four', 'five', 'six',
    'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.count(
        childAspectRatio: 1,
        crossAxisCount: 3,
        children: List.generate(12, (index) {
          return Container(
            color: _colors[index % _colors.length],
            margin: const EdgeInsets.all(10),
            child: Center(
              child: Text(
                _texts[index % _texts.length],
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
