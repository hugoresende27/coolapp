import 'package:coolapp/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: const RootPage(),
    );
  }
}

/// A StatefulWidget is a widget that can hold mutable state.
/// It has a corresponding State object that can be used to store and manage the changing data within the widget.
/// StatefulWidgets are used for parts of the UI that need to be able to update and react to changes,
/// such as input fields, dynamic lists, animations, etc.
class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage =
      0; //vars before the build, or vars will be set in every rebuild
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hugo Resende App'),
      ),
      body: const HomePage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Terminal print');
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onDestinationSelected: (int index) {  //to make the bottom navigation work, setState to change the selected button
          setState(() { 
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
