import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Home Page",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: const [
          Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Column(
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
                    // color: Colors.white,
                    decoration: TextDecoration.none),
              ),
            ),
          ),
          // SizedBox(
          //   height: 50,
          // ),
          const Card(
            child: Center(
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
          ),
          const Icon(
            Icons.person,
            size: 60,
            // color: Colors.white,
          ),
          SizedBox(
              width: 300,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              )),

          const Card(
            elevation: 40,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter your name",
                labelText: "Name",
                labelStyle: TextStyle(color: Colors.purple),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
          ),
          const Switch(
            value: true,
            onChanged: null,
            activeTrackColor: Colors.amber,
            inactiveTrackColor: Colors.blue,
          ),
          // Image.asset("images/happy_cat.jpg")
          // Image.network(
          //     "https://static.vecteezy.com/system/resources/thumbnails/029/554/988/small_2x/surprised-cat-scottish-isolated-on-white-background-generative-ai-photo.jpg"),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
