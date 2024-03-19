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

  ///default constructor for MyHomePage includes a 'title' parameter
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
        child: Scaffold(
          backgroundColor: _backgroundColor,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Hello there',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  // const SizedBox(
                  //   height: 60,
                  // ),
                  // const Text(
                  //   'Tap a screen to pick a new color!',
                  // ),
                  // Text(
                  //   'RGB(${_backgroundColor.red}, ${_backgroundColor.green},'
                  //       ' ${_backgroundColor.blue})',
                  //   style: Theme.of(context).textTheme.headline5,
                  // ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
