import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Learn Flutter Hugo'),
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .pop(); //to delete the page (go to the previous page, back button)
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  debugPrint('Actions');
                },
                icon: const Icon(Icons.info_outline))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('images/image1.jpg'),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.black,
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                color: Colors.blueGrey,
                width:
                    double.infinity, //double.infinity to get max width possible
                child: const Center(
                  child: Text(
                    'This is a text widget',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: isSwitch ? Colors.blue : Colors.green,
                ),
                onPressed: () {
                  debugPrint('Elevated button here');
                },
                child: const Text('Elevated Button'),
              ),
              OutlinedButton(
                onPressed: () {
                  debugPrint('Outlined button here');
                },
                child: const Text('Outlined Button'),
              ),
              TextButton(
                onPressed: () {
                  debugPrint('Text button here');
                },
                child: const Text('Text Button'),
              ),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  debugPrint('This is the row');
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.local_fire_department,
                      color: Colors.blue,
                    ),
                    Text(
                      'Row Widget',
                    ),
                    Icon(
                      Icons.local_fire_department,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              Switch(
                  value: isSwitch,
                  onChanged: (bool newBool) {
                    setState(() {
                      isSwitch = newBool;
                    });
                  }),
              Checkbox(
                  value: isCheckBox,
                  onChanged: (bool? newBool) {
                    setState(() {
                      isCheckBox = newBool;
                    });
                  }),
              Image.network(
                  'https://cdn.pixabay.com/photo/2023/07/10/06/52/trail-8117575_1280.jpg')
            ],
          ),
        ));
  }
}
