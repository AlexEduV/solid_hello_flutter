import 'package:flutter/material.dart';

import 'package:hello_there_flutter/random.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello There',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //initial background color
  Color _backgroundColor = Colors.white;

  void _updateBackgroundColor() {

    //update a background color
    setState(() {
      _backgroundColor = getRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GestureDetector(
        onTap: _updateBackgroundColor,
        child: Container(
          height: double.infinity,
          color:  _backgroundColor,
          child: Center(
                child: Text(
                  'Hello there',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
        ),
      ),
    );
  }
}
