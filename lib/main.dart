import 'package:flutter/material.dart';

void main ()
{
  runApp(MyApp() );
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
            backgroundColor: Colors.green,
            title: const Text('Flutter is Fun')
          ),
          body: Container( 
            child: const Text ('Hi princess emoji here'),
            margin: const EdgeInsets.all(100),
            padding: const EdgeInsets.all(10),
            color: Colors.red,
            height: 100,
            width: 100,
          )
        )
    );
  }
}