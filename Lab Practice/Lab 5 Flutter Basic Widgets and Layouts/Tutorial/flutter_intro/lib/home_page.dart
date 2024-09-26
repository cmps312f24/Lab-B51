import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purpleAccent,
      child: const SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Center(
                child: Text(
                  "CMPS 312",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    backgroundColor: Colors.yellow,
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(bottom: 50.0),
              child: Center(
                child: Text(
                  "Welcome",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      decoration: TextDecoration.none),
                ),
              ),
            ),
            // SizedBox(
            //   height: 50,
            // ),
            Center(
              child: Text(
                "Ali",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  backgroundColor: Colors.yellow,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
