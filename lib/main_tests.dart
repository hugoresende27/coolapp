import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green, title: const Text('Flutter is Fun')),

      // body: Center(
      //   child: Container(

      //     margin: const EdgeInsets.all(100),
      //     padding: const EdgeInsets.all(10),
      //     color: Colors.red,
      //     height: 150,
      //     width: 150,
      //     child: const Text ('Hi princess emoji here'),
      //   ),
      // )

      // body: const Column(    //vertical align
      //   children: [
      //       Icon(Icons.backpack),
      //       Icon(Icons.leaderboard),
      //       Icon(Icons.person),
      // ]),

      body: const Row(
          //horizontal align
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              flex: 4,
              child: Icon(Icons.backpack),
            ),
            Icon(Icons.leaderboard),
            Icon(Icons.person),
          ]),
    ));
  }
}
