import 'package:flutter/material.dart';
import 'package:stadium_app/repo/stadium_repo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _showSearchBar = false;
  var names = ['John', 'Doe', 'Jane', 'Doe'];

  var _stadiums = [];
  var repo = StadiumRepo();

  @override
  void initState() {
    // _stadiums = repo.getStadiums();
    repo.getStadiums().then((stadiums) => {
          _stadiums = stadiums,
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          if (!_showSearchBar)
            IconButton(
                onPressed: () {
                  setState(() {
                    _showSearchBar = true;
                  });
                },
                icon: const Icon(Icons.search))
        ],
        title: const Text('Stadium App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            if (_showSearchBar)
              TextField(
                onChanged: (value) => {
                  setState(() {
                    _stadiums = repo.filterStadiums(value);
                  })
                },
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _showSearchBar = false;
                        });
                      },
                      icon: const Icon(Icons.close)),
                ),
              ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        leading: Image.asset(
                            'assets/images/${_stadiums[index].imageName}.jpg'),
                        title: Text(_stadiums[index].name),
                        subtitle: Text(_stadiums[index].city),
                        trailing: const Icon(Icons.edit),
                      ),
                    );
                  },
                  itemCount: _stadiums.length),
            ),
          ],
        ),
      ),
    );
  }
}
