import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var theInputText = 'Something';
  final _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print("The build method is called");
    return Scaffold(
      appBar: AppBar(
        title: const Text('States Tutorial'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: _textFieldController,
              decoration: InputDecoration(
                // suffixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          const Text('The value you put inside is here'),
          ElevatedButton(
            onPressed: () {
              setState(() {
                theInputText = _textFieldController.text;
                _textFieldController.clear();
              });
            },
            child: const Icon(Icons.shape_line),
          ),
          Text(
            theInputText,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
