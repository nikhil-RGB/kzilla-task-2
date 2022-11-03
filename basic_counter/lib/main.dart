import 'package:flutter/material.dart';
import 'dart:math';

import 'constants/Colors.dart';
import 'widgets/ColorListTile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of the application
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _itemcnt = 10;
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values.
      Random random = new Random();
      int randomNumber = random.nextInt(100);
      _itemcnt = randomNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    return Scaffold(
      backgroundColor: tdBlack,
      appBar: AppBar(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 0,
          backgroundColor: Color.fromARGB(250, 142, 108, 108),
          title: Center(
            child: Text(
              "Kzilla Miniproject",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          )),
      body: ListView.builder(
        itemCount: _itemcnt,
        itemBuilder: (context, position) {
          return Container(
            margin: EdgeInsets.all(10),
            child: ColorListTile(position: position),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Change range',
        child: const Icon(Icons.change_circle_rounded),
        backgroundColor: Color.fromARGB(199, 142, 108, 108),
      ),
    );
  }
}
