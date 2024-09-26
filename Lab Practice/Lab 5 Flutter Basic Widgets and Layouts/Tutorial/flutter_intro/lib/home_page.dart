import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown[400],
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
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

            const Padding(
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
            const Center(
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
            const Icon(
              Icons.person,
              size: 60,
              color: Colors.white,
            ),

            Image.asset("images/happy_cat.jpg")
            // Image.network(
            //     "https://static.vecteezy.com/system/resources/thumbnails/029/554/988/small_2x/surprised-cat-scottish-isolated-on-white-background-generative-ai-photo.jpg"),
          ],
        ),
      ),
    );
  }
}
