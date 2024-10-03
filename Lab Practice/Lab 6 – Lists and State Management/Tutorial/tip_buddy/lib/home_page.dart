import 'package:flutter/material.dart';

class TipCalculator extends StatefulWidget {
  const TipCalculator({super.key});

  @override
  State<TipCalculator> createState() => _TipCalculatorState();
}

class _TipCalculatorState extends State<TipCalculator> {
  final TextEditingController _controller = TextEditingController();
  var _tipPercentage = 10;
  var _roundUp = false;
  var _billAmount = 0.0;

  final tips = [10, 20, 30];

  double getBBillAmount() {
    var tipAmount = _billAmount * _tipPercentage / 100;
    if (_roundUp) {
      tipAmount = tipAmount.ceilToDouble();
    }
    return tipAmount;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            "Tip Calculator",
            style: TextStyle(
              color: Colors.red,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _controller,
            onChanged: (value) {
              setState(() {
                _billAmount = double.parse(value);
              });
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Bill amount',
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Select Tip Percentage",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Divider(thickness: 5),
          for (var tip in tips)
            RadioListTile<int>(
              title: Text("$tip %"),
              value: tip,
              groupValue: _tipPercentage,

              //if the value == groupValue then the radio button is selected

              onChanged: (value) {
                setState(() {
                  _tipPercentage = value!;
                });
              },
            ),
          Row(
            children: [
              const SizedBox(width: 20),
              const Text(
                'Round up tip amount',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(width: 10),
              Switch(
                value: _roundUp,
                onChanged: (bool value) {
                  setState(() {
                    _roundUp = value;
                  });
                },
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.red,
            child: GestureDetector(
              onTap: () {},
              child: SizedBox(
                height: 80,
                child: Center(
                  child: Text(
                    'Total Tip Amount : ${getBBillAmount()}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,

                      //capitalize the text
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
