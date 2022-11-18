import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String label = 'My first State';

  changeState() {
    setState(() {
      if (label == 'My first State') {
        label = 'My Second State';
      } else {
        label = 'My first State';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/img.jpg',
              ),
              Text(label),
              TextButton(
                  onPressed: () {
                    changeState();
                  },
                  child: const Text('Change'))
            ],
          ),
        ));
  }
}
