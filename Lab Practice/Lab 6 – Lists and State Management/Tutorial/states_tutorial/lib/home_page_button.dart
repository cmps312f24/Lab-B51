import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var theInputText = 'Something';
  final _textFieldController1 = TextEditingController();
  final _textFieldController2 = TextEditingController();
  var result = 0.0;

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
              controller: _textFieldController1,
              decoration: InputDecoration(
                // suffixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: _textFieldController2,
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
                result = double.parse(_textFieldController1.text) +
                    double.parse(_textFieldController2.text);
              });
            },
            child: const Icon(Icons.shape_line),
          ),
          Text(
            result.toString(),
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
