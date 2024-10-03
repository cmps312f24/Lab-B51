import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var theInputText = 'Something';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('States Tutorial'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              onChanged: (value) {
                theInputText = value;

                // tell the UI to re-run the build method
                setState(() {});
              },
              decoration: InputDecoration(
                // suffixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          const Text('The value you put inside is here'),
          Text(
            theInputText,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
